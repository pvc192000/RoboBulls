#ifndef FREEKICKSTRATEGY_H
#define FREEKICKSTRATEGY_H
#include "model/team/team_strategy.h"
#include "utilities/point.h"
class Robot;

/*! @file
    Strategy to support a free kick game state.
    Assigns behaviors for all the robots.
    A goal can be scored directly from a free kick.
*/



class FreeKickStrategy: public TeamStrategy
{
public:
    enum Status {KICKING, KICKED};
    FreeKickStrategy(RobotTeam* _team);
    void assignBehaviors() override;
    int getStatus() override;
    virtual QString getName() override;

private:
    // Robot that is sent to kick the ball
    Robot* kicker = nullptr;

    // Stores the position of the ball when this strategy starts
    // so that we know when the opponents have moved the ball
    Point initial_bp;
};

#endif // FREEKICKSTRATEGY_H
