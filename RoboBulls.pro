#-------------------------------------------------

#
# Project created by QtCreator 2014-03-05T09:39:34
#
#-------------------------------------------------


QT_SELECT=5
QT += core network widgets
QT -= gui
QT += serialport
QT += core gui
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets


TARGET = RoboBulls
CONFIG += console
CONFIG += -j
CONFIG -= app_bundle

TEMPLATE = app
QMAKE_CXX = g++
QMAKE_CXXFLAGS += -std=c++0x
DESTDIR = $$PWD



PROTOPATH = libs/proto
PROTOS = ssl-grsim/proto/grSim_Commands.proto \
         ssl-grsim/proto/grSim_Packet.proto \
         ssl-grsim/proto/grSim_Replacement.proto \
         ssl-vision/proto/messages_robocup_ssl_detection.proto \
         ssl-vision/proto/messages_robocup_ssl_geometry.proto \
         ssl-vision/proto/messages_robocup_ssl_refbox_log.proto \
         ssl-vision/proto/messages_robocup_ssl_wrapper.proto
include(protobuf.pri)



SOURCES += main.cpp \
	behavior/attackmain.cpp \
	behavior/attacksupport.cpp \
	behavior/behavior.cpp \
	behavior/genericmovementbehavior.cpp \
	communication/nxtrobcomm.cpp \
	communication/refcomm.cpp \
	communication/robcomm.cpp \
        communication/serialib.cpp \
	communication/simrobcomm.cpp \
	communication/visioncomm.cpp \
	gui/fieldpanel.cpp \
	gui/gamepanel.cpp \
	gui/guiball.cpp \
	gui/guibotlabel.cpp \
	gui/guicomm.cpp \
	gui/guidrawline.cpp \
	gui/guifield.cpp \
	gui/guiinterface.cpp \
	gui/guirobot.cpp \
	gui/guiscene.cpp \
	gui/guisidelines.cpp \
        gui/joystick.cpp \
	gui/mainwindow.cpp \
	gui/objectposition.cpp \
	gui/robotpanel.cpp \
	gui/selrobotpanel.cpp \
    model/ball.cpp \
    model/field.cpp \
    model/game_state.cpp \
	model/robot.cpp \
        movement/four_wheel_omni/four_wheel_omni_pilot.cpp \
	movement/move_collisions.cpp \
	movement/pathfinding/fppa_pathfinding.cpp \
        movement/three_wheel_omni/three_wheel_omni_pilot.cpp \
	skill/kick.cpp \
	skill/kicktopointomni.cpp \
	skill/stop.cpp \
    ssl-vision/netraw.cpp \
    ssl-vision/robocup_ssl_client.cpp \
    ssl-vision/visioncomm.cpp \
	strategy/freekickstrategy.cpp \
	strategy/haltstrategy.cpp \
	strategy/kickoffstrategy.cpp \
	strategy/normalgamestrategy.cpp \
	strategy/penaltystrategy.cpp \
	strategy/stopstrategy.cpp \
	strategy/strategycontroller.cpp \
	strategy/strategy.cpp \
	strategy/teststrategy.cpp \
	strategy/videostrategies.cpp \
	utilities/comparisons.cpp \
	utilities/debug.cpp \
	utilities/edges.cpp \
	utilities/point.cpp \
	utilities/velocitycalculator.cpp \
        behavior/defendbehavior.cpp \
        strategy/indirectkickstrategy.cpp \
        communication/kfball.cpp \
        utilities/getclassname.cpp \
        utilities/region/sector.cpp \
        utilities/region/rectangle.cpp \
        utilities/measurements.cpp \
        utilities/region/defencearea.cpp \
        gui/guidrawpoint.cpp \
        gui/guidrawregion.cpp \
        skill/dribbletopoint.cpp \
        behavior/challengeballbot.cpp \
        skill/dribbleback.cpp \
        behavior/refstop.cpp \
        behavior/goalie.cpp \
        behavior/markbot.cpp \
        behavior/wall.cpp \
        behavior/penaltygoalie.cpp \
        communication/yisirobcomm.cpp \
        communication/crc.cpp \
        movement/go_to_pose.cpp \
        movement/differential/differential_pilot.cpp \
    model/team.cpp \
    parameters/motion_parameters.cpp

HEADERS += \
	behavior/attackmain.h \
	behavior/attacksupport.h \
	behavior/behavior.h \
	behavior/defendbehavior.h \
	behavior/genericmovementbehavior.h \
	behavior/genericskillbehavior.h \
	communication/nxtrobcomm.h \
	communication/refcomm.h \
	communication/robcomm.h \
        communication/serialib.h \
	communication/simrobcomm.h \
	communication/visioncomm.h \
	gui/fieldpanel.h \
	gui/gamepanel.h \
	gui/guiball.h \
	gui/guibotlabel.h \
	gui/guicomm.h \
	gui/guidrawline.h \
	gui/guifield.h \
	gui/guiinterface.h \
	gui/guirobot.h \
	gui/guiscene.h \
	gui/guisidelines.h \
        gui/joystick.h \
	gui/mainwindow.h \
	gui/objectposition.h \
	gui/robotpanel.h \
	gui/selrobotpanel.h \
    model/ball.h \
    model/field.h \
    model/game_state.h \
	model/robot.h \
	movement/go_to_pose.h \
	movement/move_collisions.h \
	movement/movetype.h \
	movement/pathfinding/fppa_pathfinding.h \
	skill/kick.h \
	skill/kicktopointomni.h \
	skill/skill.h \
	skill/stop.h \
    ssl-vision/netraw.h \
    ssl-vision/robocup_ssl_client.h \
    ssl-vision/visioncomm.h \
	strategy/freekickstrategy.h \
	strategy/haltstrategy.h \
	strategy/kickoffstrategy.h \
	strategy/normalgamestrategy.h \
	strategy/penaltystrategy.h \
	strategy/stopstrategy.h \
	strategy/strategycontroller.h \
	strategy/strategy.h \
	strategy/teststrategy.h \
	strategy/videostrategies.h \
	utilities/comparisons.h \
	utilities/debug.h \
	utilities/edges.h \
	utilities/point.h \
	utilities/velocitycalculator.h \
        strategy/indirectkickstrategy.h \
        communication/kfball.h \
        utilities/getclassname.h \
        utilities/region/sector.h \
        utilities/region/rectangle.h \
        utilities/region/region.h \
        utilities/measurements.h \
        utilities/region/defencearea.h \
        gui/guidrawpoint.h \
        gui/guidrawregion.h \
        skill/dribbletopoint.h \
        behavior/challengeballbot.h \
        skill/dribbleback.h \
        behavior/refstop.h \
        behavior/goalie.h \
        behavior/markbot.h \
        behavior/wall.h \
        behavior/penaltygoalie.h \
        communication/yisirobcomm.h \
        communication/crc.h \
        movement/differential/differential_pilot.h \
        movement/three_wheel_omni/three_wheel_omni_pilot.h \
        movement/four_wheel_omni/four_wheel_omni_pilot.h \
    model/team.h \
    parameters/motion_parameters.h



unix|win32: LIBS +=  -lprotobuf -lSDL2

OTHER_FILES += \
    gui/images/0.png \
    gui/images/1.png \
    gui/images/2.png \
    gui/images/3.png \
    gui/images/4.png \
    gui/images/5.png \
    gui/images/ball.png \
    gui/images/bot0.png \
    gui/images/bot1.png \
    gui/images/bot2.png \
    gui/images/bot3.png \
    gui/images/bot4.png \
    gui/images/bot5.png \
    gui/images/gear.png \
    gui/images/gear2.png \
    gui/images/go-next.png \
    gui/images/slider-handle.png \
    RoboBulls.supp

RESOURCES += \
    gui/images.qrc

FORMS += \
    gui/mainwindow.ui

unix:!macx: LIBS += -L$$PWD/libs/yaml-cpp-0.6.3/build/ -lyaml-cpp

INCLUDEPATH += $$PWD/libs/yaml-cpp-0.6.3/include
DEPENDPATH += $$PWD/libs/yaml-cpp-0.6.3/include

#unix:!macx: PRE_TARGETDEPS += $$PWD/libs/yaml-cpp-0.6.3/build/libyaml-cpp.a

DISTFILES += \
    ssl-game-controller/proto/ssl_game_controller_auto_ref.proto \
    ssl-game-controller/proto/ssl_game_controller_common.proto \
    ssl-game-controller/proto/ssl_game_controller_team.proto \
    ssl-game-controller/proto/ssl_game_event.proto \
    ssl-game-controller/proto/ssl_game_event_2019.proto \
    ssl-game-controller/proto/ssl_referee.proto \
    ssl-grsim/proto/grSim_Commands.proto \
    ssl-grsim/proto/grSim_Packet.proto \
    ssl-grsim/proto/grSim_Replacement.proto \
    ssl-vision/proto/messages_robocup_ssl_detection.proto \
    ssl-vision/proto/messages_robocup_ssl_geometry.proto \
    ssl-vision/proto/messages_robocup_ssl_refbox_log.proto \
    ssl-vision/proto/messages_robocup_ssl_wrapper.proto \
    ssl-vision/proto/not used/messages_robocup_ssl_detection_tracked.proto \
    ssl-vision/proto/not used/messages_robocup_ssl_geometry_legacy.proto \
    ssl-vision/proto/not used/messages_robocup_ssl_wrapper_legacy.proto \
    ssl-vision/proto/not used/messages_robocup_ssl_wrapper_tracked.proto

