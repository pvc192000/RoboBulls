#include "challengeballbot.h"
#include "model/ball.h"
#include "model/game_state.h"
#include "model/robot/robot.h"
#include "model/robot/navigation/robot_pilot.h"
#include "model/game_state.h"
#include "model/team/team.h"
#include "utilities/measurements.h"

ChallengeBallBot::ChallengeBallBot(Robot* robot) : Behavior(robot)
{
}

bool ChallengeBallBot::perform()
{
    Robot* ballBot = game_state->getRobotWithBall();

    if(ballBot && ballBot->getTeamId() != robot->getTeamId())
    {
//        std::cout << "block" << std::endl;

        Point bp = *ball;
        float oppAng2Ball = Measurements::angleBetween(ballBot, bp);
        Point lead = Point(cos(oppAng2Ball), sin(oppAng2Ball)) * ROBOT_RADIUS * 3;
        Point target = bp + lead;

        float myAng2Opp = Measurements::angleBetween(robot, ballBot);
        auto cmd = CmdGoToPose(target,myAng2Opp);
        robot->goToPose(cmd);
    }
    else
    {
        //Case to stop robot from floating
//        std::cout << "stop" << std::endl;
        auto cmd = CmdGoToPose(*robot);
        robot->goToPose(cmd);
    }
    done = robot->completedGoToPoseCmd();
    return done;
}

bool ChallengeBallBot::isFinished() {
    return done;
}

string ChallengeBallBot::getName() {
    return "ChallengeBallBot";
}

