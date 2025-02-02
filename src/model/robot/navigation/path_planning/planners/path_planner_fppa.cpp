#include <math.h>
#include <assert.h>
#include <algorithm>
#include <iostream>
#include "configuration/motion_parameters.h"
#include "utilities/measurements.h"
#include "utilities/comparisons.h"
#include "utilities/region/defencearea.h"
#include "model/game_state.h"
#include "path_planner_fppa.h"
#include "model/ball.h"
#include "model/field.h"
#include "model/robot/robot.h"
#include "model/game_state.h"
#include <qdebug.h>
using std::cout , std::endl;

/* Implementation of the Fast Path Planning Algorithm
 * In a sense, this is a mostly a generalized implementation.
 * But it is currently hardcoded to work with robobulls only.
 * JamesW.
 */

/************************************************************************/
/* USER CONFIGURATION */

/* Defines the maximum recursions buildPathimpl makes(the number of segments in a path)
 * before no more serch is made
 */
#define MAX_RECURSION_DEPTH 5

/* Defines, when sub-divding a path to avoid an obstacle, the minimum perpendicular distance
 * from the segment it samples to avoid it. Reducing the search size by a factor can
 * help eliminate the jagged edges in the path, but risks cutting corners too close around
 * obstacles.
 */
#define SRCH_INCR 20

/************************************************************************/

namespace  {

    DefenceArea our_deffence_area(OUR_SIDE);
    DefenceArea opponent_deffence_area(OPPONENT_SIDE);
}

PathPlannerFPPA::PathPlannerFPPA(Robot* robot) : PathPlanner(robot) {

}

PathPlannerFPPA::~PathPlannerFPPA() {

}


std::deque<Point> PathPlannerFPPA::genPath(Point _goal, bool _avoid_ball) {

    // store information:
    goal            = _goal;
    avoid_ball      = _avoid_ball;
    auto origin     = self->getPosition();
    is_goalie       = self->isGoalie();

    // update robot obstacles:
    robotObstacles.clear();
    auto& robots = game_state->getFieldRobots();
    robotObstacles.reserve(robots.size() + 1);
    for(Robot* rob : robots)
        if(rob != self)
            robotObstacles.push_back(*rob);


    // If the end point is not reachable, make it reachable
    //qInfo() <<"Goal: " <<goal;
    moveToValidLocation(goal);
    //qInfo() <<"Goal after: " <<goal;


    // init path
    std::deque<Point> path;
    path.push_back(origin);

    // recursively find path
    recursiveFPPA(path, goal, 1);

    // remove initial point (since it is the robot's current position)
    path.pop_front();


    return path;
}


void PathPlannerFPPA::recursiveFPPA(Path& current_path, const Point& next_goal, int depth) {
    // get the current position in the path (last point added)
    Point& last_goal = current_path.back();

    Point obstacle_position;
    if(segmentIntersectsObstacle(last_goal, next_goal, obstacle_position) && depth < MAX_RECURSION_DEPTH ){
        // an obstacle intersects the segment to the next goal and I can still recurse,
        // thus choose intermediate goal and then recurse:
        auto sub_goal = chooseSubGoal(last_goal, next_goal, obstacle_position);

        recursiveFPPA(current_path, sub_goal, depth + 1); // after this, last point in current path will be sob_goal
        recursiveFPPA(current_path,     goal, depth + 1);

    } else {// qInfo() <<"End: "<<next_goal<< " depth: " << depth;
        // Either the segment lies in free space, or  have reached the maximum recursion depth
        // I do not need to recurse, just add the goal to the path
        current_path.push_back(next_goal);
        //qInfo() << "Goal point added: "<< next_goal << "actual goal: " << goal;
    }
}



bool PathPlannerFPPA::segmentIntersectsObstacle(const Point& start, const Point& end, Point& obstacle_position) {
    // TODO: original algorithms states closest obstacle should be returned, can I return first obstacle insted?

    bool  obstacle_found = false;

    // Check ball
    if(avoid_ball && Measurements::lineSegmentDistance(*ball, start, end) <= ROBOT_RADIUS+Field::BALL_RADIUS+10) {
        obstacle_found = true;
        obstacle_position = *ball;
        obstacleIsBall = true;
        return obstacle_found;
    }

    // Check robots
    for(const Point& obstacle : robotObstacles) {
        // Here we exclude obstacle points that are too close to the starting point, WHY???
        if(Measurements::isClose(obstacle, start, ROBOT_RADIUS*2+10))
            continue;

        if(Measurements::lineSegmentDistance(obstacle, start, end) <= ROBOT_RADIUS*2+10) {
            obstacle_found = true;
            obstacle_position = obstacle;
            return obstacle_found;
        }
    }


    // check opponent's deffence area (robots cant use opponents deffence area)
    // NOTE: if we already are in an illegal area, we have to move out so we can momentarily move through it
    if(!opponent_deffence_area.contains(*self)){
        auto intercepts = opponent_deffence_area.intersectSegment(start, end);
        if(!intercepts.empty()) {
            obstacle_found = true;
            obstacle_position = (intercepts.front() + intercepts.back())*0.5; // why do we assume the obstacle is in half the intersect segment? why do we assume theres is an obstacle if we havent checked the goalie?
            return obstacle_found;
        }
    }



    // Only goalie can use our deffence area (is this correct??), other robots have to avoid it
    if(!is_goalie && !our_deffence_area.contains(start)) {

        // check our team's deffence area
        auto intercepts = our_deffence_area.intersectSegment(start, end);
        if(!intercepts.empty()) {
            obstacle_found = true;
            obstacle_position = (intercepts.front() + intercepts.back())*0.5;
        }

    }

    return obstacle_found;
}


Point PathPlannerFPPA::chooseSubGoal(const Point& start, const Point& end, const Point& obstacle){
    // find point in segment closest to the obstacle
    Point nearest_to_obstacle = Measurements::lineSegmentPoint(obstacle, start, end);

    // move point in direction perpendicular to the segment until point lies in free space
    Point search_vector = (end-start).normalizedPerpen()*SRCH_INCR;
    Point sub_goal[2] = {nearest_to_obstacle, nearest_to_obstacle};
    int cycles[2] = {0, 0};
    bool isPointOutsideField[2] = {false, false};
    for(int i : {0,1}){
        do {
            cycles[i]++;
            sub_goal[i] += search_vector;
            if (Comparisons::isPointOutsideField(sub_goal[i])){
                isPointOutsideField[i] = true;
                break;
            }

        } while (isPointAtObstacle(sub_goal[i]));
        search_vector *= -1;
    }

    // Choose closest sub_goal
    int closest_point_id;
        if(isPointOutsideField[1])
            closest_point_id=0;
        else
            closest_point_id=1;

    // TODO: move goal to valid location before choosing
    moveToValidLocation(sub_goal[closest_point_id]);

    return sub_goal[closest_point_id];
}






void PathPlannerFPPA::moveToValidLocation(Point& dest) { //qInfo() <<"Before clamp: " <<dest;
    // Clamp points that are outside the field // TODO: this deforms path, rather than clamping, clipping should be performed
    dest.x = Measurements::clamp(dest.x, -Field::HALF_FIELD_LENGTH+100.f,  Field::HALF_FIELD_LENGTH-100.f);
    dest.y = Measurements::clamp(dest.y, -Field::HALF_FIELD_WIDTH +100.f,  Field::HALF_FIELD_WIDTH -100.f);

                                                         //qInfo() <<"after clamp: " <<dest;
    // Push points to edge of defence areas
    if(dest.x > 0){ opponent_deffence_area.expelPoint(dest);} //qInfo() <<"x>0 clamp: " <<dest;}
    else if(!is_goalie){ our_deffence_area.expelPoint(dest);}// qInfo() <<"GOALIE clamp: " <<dest;}

}





bool PathPlannerFPPA::isPointAtObstacle(const Point& point) {
    // Check ball
    if(avoid_ball && Measurements::isClose(point, *ball, ROBOT_RADIUS+Field::BALL_RADIUS + 50) && obstacleIsBall)
        return true;



    // Check defence areas
    // no robot can use opponent deffence area
    // only goalie can use our deffence area
    if( opponent_deffence_area.contains(point,DEF_AREA_TOL) || (!is_goalie && our_deffence_area.contains(point, DEF_AREA_TOL)) ) {
        return true;
    }

    // Check robots and return
    return Comparisons::isDistanceToLess(point, ROBOT_RADIUS*2 + 50).any_of(robotObstacles);
}


