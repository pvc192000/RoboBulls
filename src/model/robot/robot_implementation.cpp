#include "robots/grsim/proxy_grsim.h"
#include "robots/yisibot/proxy_yisibot.h"
#include "robots/rpi_2019/proxyrpi_2019.h"

#include "robots/none/proxy_none.h"
#include "robot_implementation.h"
#include "model/robot/robot.h"
#include "model/robot/navigation/robot_pilot.h"
#include <QDebug>
#include "utilities/my_yaml.h"

RobotImplementation::~RobotImplementation(){
}

void RobotImplementation::stopAndClose(const QSet<Robot*>& robots){

        for(Robot* rob : robots) {
            rob->setTargetVelocityLocal(Point(0,0),0);
            rob->setDribble(0);
            rob->setKickSpeed(0);
        }
        sendCommands(robots);
        close();
}


RobotImplementation* RobotImplementation::load(YAML::Node* proxy_node){
    // set robot communication:

    qInfo() << "        ROBOT_PROXY";
    qInfo() << "            TYPE          -" << (*proxy_node)["TYPE"];

    auto robot_type = (*proxy_node)["TYPE"].as<string>();

    if( robot_type == "grsim"){
        return new ProxyGrsim(proxy_node);

    } else if (robot_type == "yisibot"){
        return new ProxyYisi(proxy_node);

    } else if (robot_type == "rpi_2019"){
        //qCritical() << "ERROR: rpi_2019 is not yet supported" ;
        //exit (-1);
        return new ProxyRpi_2019(proxy_node);

    } else if (robot_type == "none"){
        return new ProxyNone();
    } else {
        qCritical() << "ERROR: unrecognized robot type";
        exit (-1);
    }
}
