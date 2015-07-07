#ifndef NXTROBCOMM_H
#define NXTROBCOMM_H
#include <stdio.h>
#include <vector>
#include <stdint.h>
#include "include/serialib.h"
#include "model/robot.h"
#include "utilities/measurments.h"
#include "robcomm.h"


class NXTRobComm : public RobComm
{
public:
     NXTRobComm();
    ~NXTRobComm();
    void sendVelsLarge(std::vector<Robot*>&);

private:
    /* The standard communicaiton packet for each
     * robot type, containing all information nessecery
     * for communicating with the robots
     */
    struct packet_t {
        int8_t tilde;         //"Tilde", '~ 'for NXT, 255 for Arduino
        int8_t id;            //Robot ID
        int8_t left_front;    //LF wheel velocity
        int8_t left_back;     //LB wheel velocity
        int8_t right_front;   //RF wheel velocity
        int8_t right_back;    //RB wheel velocity
        int8_t kick;          //Kick? 1/0 for Arduino, 'k'/0 for NXT
        int8_t chip_power;    //Chip kick power
        int8_t dribble_power; //Dribbler power
        int8_t dollar;        //"Dollar", '$' for NXT, 255 for Arduino
    };

    void send(unsigned);
    void send(char*, int size);
    serialib Xbee;
};

#endif // NXTROBCOMM_H
