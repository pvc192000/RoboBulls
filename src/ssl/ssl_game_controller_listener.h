#ifndef REFCOMM_H
#define REFCOMM_H

#include <QThread>
#include <QUdpSocket>
#include <QMutex>
#include <cmath>
#include "utilities/point.h"
using namespace std;

enum Referee_Command : int;
class GameState;
class RobotTeam;

namespace YAML {
    class Node;
}

/*! @brief Communication module to receive information from the RefBox
 * @author Origin. Narges Ghaedi, JamesW
 * @details
 * Retrieves and parses a legacy packet from the
 * [SSL Referee Box](http://robocupssl.cpe.ku.ac.th/referee:start),
 * and fills out the GameModel.<br><br>
 * <b>Referee Box Command Quick Reference:</b>
 */

class SSLGameControllerListener : public QObject
{
    Q_OBJECT
public:
    SSLGameControllerListener(YAML::Node* comm_node, RobotTeam* teams[]);
    static void copyState(GameState*);
    static SSLGameControllerListener* get();

    ~SSLGameControllerListener();

public slots:
    void restart_socket();
private slots:
    void process_package();


signals:
    void refereeCommandChanged(int new_value, int old_value, Point* designated_position);
    void goalsChanged(int blue_goals, int yellow_goals);

private:

    static SSLGameControllerListener* instance;
    static QThread* thread;
    QUdpSocket* socket = new QUdpSocket(this);
    QMutex mutex;

    QString net_address;
    int    net_port;
    Point* ball_placement;
    Referee_Command command;
    Referee_Command command_previous;
    int time_left = 0;
    int goals[2] = {0};

};

#endif // REFCOMM_H
