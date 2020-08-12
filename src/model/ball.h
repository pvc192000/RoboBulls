#ifndef BALL_H
#define BALL_H

#include "moving_object.h"
class Robot;

class Ball : public MovingObject {

public:

//    static Ball ball;

    /*! @brief Return a predicted stopping point for the ball
     * \return A Point with the ball's position */
    Point  getStopPosition();
    void   setStopPosition(Point);


    bool hasBall(Robot*);

private:


    Point  stopPosition;       //The predicted stop point of the ball
    Point  predictedPosition;  //Prediciton point of the ball

};


#endif // BALL_H
