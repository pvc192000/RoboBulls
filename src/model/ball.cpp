#include "model/ball.h"
#include "robot/robot.h"
#include "utilities/measurements.h"
#include "utilities/comparisons.h"
#include <iostream>
using std::cout, std::endl;


Point  Ball::getStopPosition(){
    return stopPosition;
}



void Ball::setStopPosition(Point p){
    stopPosition = p;
}





