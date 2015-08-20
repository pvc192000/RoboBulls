#ifndef VISIONCOMM_H
#define VISIONCOMM_H
#include <string>
#include <QtCore/QThread>
#include "include/netraw.h"
#include "include/messages_robocup_ssl_detection.pb.h"
#include "include/messages_robocup_ssl_geometry.pb.h"
#include "include/messages_robocup_ssl_wrapper.pb.h"
#include "include/robocup_ssl_client.h"
#include "model/gamemodel.h"
#include "model/robot.h"

//! @brief CONF_THRESHOLD sets the minimum confidence to consider the ball as detected.
const float CONF_THRESHOLD_BALL = 0.75;
const float CONF_THRESHOLD_BOTS = 0.8;

//! @brief DISCARD_RATE sets the rate in which packets are discarded.
//! Only 1/DISCARD_RATE packages are processed.
const int DISCARD_RATE = 1;

/**
 * @brief The VisionComm class recieves information from the vision cameras
 * @author Origin. Narges Ghaedi, JamesW
 * @details Detects the robots and ball and puts each robot in the corresponding team
 * based on robot's color (Blue team/ Yellow team)
 */
class VisionComm: public QThread
{
public:
    VisionComm(GameModel *gm);
    ~VisionComm();

    //communicating with reciver
    bool receive();
    
    //QThread run method
    void run();

protected:
    //! @brief Parses an SSL_DetectionFrame and fills out GameModel
    void recieveRobotTeam(const SSL_DetectionFrame& frame, int whichTeam);

    //! @brief Parses an SSL_DetectionFrame and fills out GameModel
    void recieveBall(const SSL_DetectionFrame& frame);

    //! @brief Updates GameModel information to fill out a robot
    void updateInfo(const SSL_DetectionRobot& robot, int detectedTeamColor);
    
    GameModel *gamemodel;
    SSL_WrapperPacket packet;
    RoboCupSSLClient * client;
    int packetCount;
    int frames = 0;
    int totalframes = 0;
    int blue_rob[10]={0};
    int yellow_rob[10]={0};
};

#endif // VISIONCOMM_H


