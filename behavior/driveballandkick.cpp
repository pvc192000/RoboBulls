#include "driveballandkick.h"
#include "model/gamemodel.h"
#include "skill/skill.h"
#include "skill/driveball.h"
#include "skill/basic_movement.h"
#include "skill/kick.h"
#include "skill/gotopositionwithorientation.h"
#include "utilities/point.h"
#include "include/globals.h"
#include <math.h>

#define CLOSE_ENOUGH 200
#define ANGLE 20 * M_PI/180
#define DIST 20

DriveBallAndKick::DriveBallAndKick(const ParameterList& list)
{
    state = initial;

    cout<<"initial driving!"<<endl;

}

void DriveBallAndKick::perform(Robot* robot)
{
    GameModel* gm = GameModel::getModel();

    Point goal = gm->getMyGoal();
    Point kickPoint(1600, 0);
    cout << "goal point\t" << goal.x << "\t" << goal.y << endl;
    cout << "kick point\t" << kickPoint.x << "\t" << kickPoint.y << endl;
//    double direction = Measurments::angleBetween(goal, kickPoint);
    double direction = Measurments::angleBetween(kickPoint, goal);

    cout << "direction\t" << direction<<endl;
    // Create a different skill depending on the state

    switch (state)
    {
    case initial:
        cout<<"drive ball and kick initial state"<<endl;
        state = driving;
        skill = new Skill::DriveBall(kickPoint, direction);
        break;
    case driving:
        cout << "in switch driving!"<<endl;
        cout << "dist kickpoint & robot\t" << Measurments::distance(kickPoint, robot->getRobotPosition()) << endl;
        cout << "dist ball & robot\t" << Measurments::distance(robot->getRobotPosition(), gm->getBallPoint()) << endl;
        if (Measurments::isClose(kickPoint, robot->getRobotPosition(), CLOSE_ENOUGH/2)
                && Measurments::isClose(robot->getRobotPosition(), gm->getBallPoint(), CLOSE_ENOUGH))
        {
            cout << "angle diff\t" << abs(Measurments::angleDiff(robot->getOrientation(), direction)) * 180 / M_PI << endl;
            if (abs(Measurments::angleDiff(robot->getOrientation(), direction)) < ANGLE/2)
            {
                state = kicking;
                skill = new Skill::Kick();
            }
//            else
//            {
//                state = finalOrientationFixing;
//                skill = new Skill::GoToPositionWithOrientation(robot->getRobotPosition(), direction);
//            }
        }
        break;
    case kicking:
        cout << "in switch kicking!"<<endl;
        state = idling;
        skill = new Skill::Stop();
        break;
    case idling:
        cout << "in switch idling!"<<endl;
        if (kickPoint.x > gm->getBallPoint().x && Measurments::distance(robot->getRobotPosition(), gm->getBallPoint()) > CLOSE_ENOUGH)
        {
            state = driving;
            skill = new Skill::DriveBall(kickPoint, direction);
        }
        else if (Measurments::isClose(robot->getRobotPosition(), gm->getBallPoint(), CLOSE_ENOUGH/2)
                 && abs(Measurments::angleDiff(robot->getOrientation(), direction)) < ANGLE)
        {
            state = kicking;
            skill = new Skill::Kick();
        }
        break;
//    case finalOrientationFixing:
//        cout<<"Fixing orientation before kicking!"<<endl;
//        cout << "angle diff\t" << abs(Measurments::angleDiff(robot->getOrientation(), direction)) * 180 / M_PI << endl;
//        if (abs(Measurments::angleDiff(robot->getOrientation(), direction)) < ANGLE/2
//                && Measurments::isClose(robot->getRobotPosition(), gm->getBallPoint(), CLOSE_ENOUGH/4*3))
//        {
//            state = kicking;
//            skill = new Skill::Kick();
//        }
//        else if (!Measurments::isClose(robot->getRobotPosition(), gm->getBallPoint(), CLOSE_ENOUGH))
//        {
//            state = driving;
//            skill = new Skill::DriveBall(kickPoint, direction);
//        }
//        break;
    }

    // Perform the skill
    skill->perform(robot);

}
