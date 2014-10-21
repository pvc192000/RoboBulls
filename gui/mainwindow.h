#ifndef MAINWINDOW_H
#define MAINWINDOW_H
#include <iostream>
#include <QFrame>
#include "model/gamemodel.h"
#include "model/robot.h"
#include <QLabel>
#include "guicomm.h"

#include <QtWidgets/QMainWindow>
#include "ui_mainwindow.h"

//Field
#include <QDialog>
#include <QtCore>
#include <QtGui>
#include "guirobot.h"
#include "guifield.h"
#include "guiball.h"
#include "guisidelines.h"
#include "guibotlabel.h"
#include "communication/refcomm.h"
#include "guidrawline.h"
#include "communication/nxtrobcomm.h"
#include "movement/move.h"
#include "guiscene.h"

namespace Ui {
    class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    ~MainWindow();

    static MainWindow* getWindow();


public:
    static MainWindow* getMainWindow();
    bool guiOverride = false;   // For the purpose of overriding gamemodel's commands with our own
    int botOverride = -1;       // the id of the currently overridden bot
    int selectedBot = -1;       // the ID of the currently selected bot
    std::vector<bool> overriddenBots;
    QString getBotCoord(int id); // Returns the specified robot's x/y position as a QString
    QString getBotOrientString(int id);
    double  getBotOrientDouble(bool myTeam, int id);
    int getBotCoordX(bool myTeam, int id);
    int getBotCoordY(bool myTeam,int id);
    QImage  getStatusImg(int id);
    bool    hasChangedQString(QLabel* l, QString s);
    bool    hasChangedQImage(QLabel* l, QImage s);
    int     getBotSpeed(std::vector<QLabel*> c, int id);
    QString getBallCoord();
    int  getBallCoordX();
    int  getBallCoordY();
    QString getRemTime();
    void setupBotPanel();
    void updateBotPanel();
    void scanForSelection();
    int getVelocity(int id);
    // Debug functions
    void printBehavior(int botID, string behavior, bool append);    // puts the given bot's given string into a vector and prints it when the bot is selected
    void drawLine( int originX, int originY, int endX, int endY );
    void guiPrint(string output);
    void updateBallInfo();
    // For getting milliseconds
    int frequency_of_primes (int n);
    int getClock();
    int getSpeed(QGraphicsItem* p, double o);
    void moveBot();
    // Key Bindings
    void keyPressEvent(QKeyEvent *event);
    void keyReleaseEvent(QKeyEvent *event);
    // Mouse stuff
    int getMouseCoordX();
    int getMouseCoordY();
    void centerViewOnBot();
    void setMyVelocity();
    void setGuiOverride();

protected:
    GameModel *gamemodel;
    Robot *robot;
    GuiComm *guicomm;
    GuiRobot *guirobot;
    RefComm *refcom;
    GuiDrawLine *guidrawline;
    NXTRobComm *nxtrobcomm;
//    Movement *move;



signals:
    void labelPrinted();
    void printLabel();
    bool sceneReady();


private:
    // moved from public
    explicit MainWindow(QWidget *parent = 0);
    Ui::MainWindow *ui;
    // my pointer
    static MainWindow *mw;
    QList<GuiComm*> threads;
    GuiScene *scene;
    QGraphicsEllipseItem *ellipse;
    QGraphicsRectItem *rectangle;
    int teamSize = 6;
    // Behavior vector
//    std::vector<QString*> botBehavior[6];
    QString botBehavior[6];
    // Robot Panel
    std::vector<QLCDNumber*> botXcoords;
    std::vector<QLCDNumber*> botYcoords;
    std::vector<QDial*> botOrients;
    std::vector<QFrame*> botFrames;
//    std::vector<QLabel*> botIcons;
    std::vector<QLabel*> botTitle;
    std::vector<QDial*> velocityDials;

    // Bot icon graphics views
    std::vector<QGraphicsView*> botIconFrames;
    // Bot individual icon scenes
    QGraphicsScene *scene_botIcon_0;
    QGraphicsScene *scene_botIcon_1;
    QGraphicsScene *scene_botIcon_2;
    QGraphicsScene *scene_botIcon_3;
    QGraphicsScene *scene_botIcon_4;
    QGraphicsScene *scene_botIcon_5;
    std::vector<QGraphicsScene*> botIconScenes;
    // Bot selected icon scenes
    QGraphicsScene *scene_botIconSel_0;
    QGraphicsScene *scene_botIconSel_1;
    QGraphicsScene *scene_botIconSel_2;
    QGraphicsScene *scene_botIconSel_3;
    QGraphicsScene *scene_botIconSel_4;
    QGraphicsScene *scene_botIconSel_5;
    std::vector<QGraphicsScene*> botIconSelScenes;
    // Ball gui icon
    GuiBall *ballIcon;
    QGraphicsScene *scene_ballIcon;
    // Bot icons
    GuiRobot *robotIcon0;
    GuiRobot *robotIcon1;
    GuiRobot *robotIcon2;
    GuiRobot *robotIcon3;
    GuiRobot *robotIcon4;
    GuiRobot *robotIcon5;
    std::vector<GuiRobot*> botIcons;
    // Bot icons for the selected bot panel
    GuiRobot *robotIcon0Sel;
    GuiRobot *robotIcon1Sel;
    GuiRobot *robotIcon2Sel;
    GuiRobot *robotIcon3Sel;
    GuiRobot *robotIcon4Sel;
    GuiRobot *robotIcon5Sel;
    std::vector<GuiRobot*> botIconsSelected;
    QGraphicsScene *selectedBotScene;
    // Field
    GuiRobot *robot0;
    GuiRobot *robot1;
    GuiRobot *robot2;
    GuiRobot *robot3;
    GuiRobot *robot4;
    GuiRobot *robot5;
    std::vector<GuiRobot*> guiTeam;
    GuiRobot *robot0Y;
    GuiRobot *robot1Y;
    GuiRobot *robot2Y;
    GuiRobot *robot3Y;
    GuiRobot *robot4Y;
    GuiRobot *robot5Y;
    std::vector<GuiRobot*> guiTeamY;
    GuiBotLabel *botLabel0;
    GuiBotLabel *botLabel1;
    GuiBotLabel *botLabel2;
    GuiBotLabel *botLabel3;
    GuiBotLabel *botLabel4;
    GuiBotLabel *botLabel5;
    std::vector<GuiBotLabel*> guiLabels;
    GuiBotLabel *botLabel0Y;
    GuiBotLabel *botLabel1Y;
    GuiBotLabel *botLabel2Y;
    GuiBotLabel *botLabel3Y;
    GuiBotLabel *botLabel4Y;
    GuiBotLabel *botLabel5Y;
    std::vector<GuiBotLabel*> guiLabelsY;
    // Camera
    int centeredBotID = -1;
    // guiPrint
    QString guiOutput;

    GuiField *field;
    GuiSidelines *sidelines;
    GuiBall *ball;
    // pointer to MainWindow
    static MainWindow* window;

    bool refresh = true;   // set this to true whenever a change to the field is made to refresh on next frame.
    bool justScrolled = false;
    // For controlling bots manually
    int myVelocity;

    long double currentTimeMS = 0;
    double ballOrigin = 0;
    double bot0Origin = 0;
    int currentFieldAngle = 0;
    int currentFieldScrollH;



private slots:
    void on_pushButton_clicked();
    void launch(int value);
    void updateScene();
    void on_pushButton_2_clicked();
    void on_pushButton_3_clicked();
    void zoomField(int scale);
    void defaultZoom();
    void setUpScene();
    void on_check_fieldGrid_clicked();
    void on_combo_gridScale_currentIndexChanged(int index);
    void on_check_coloredGoals_clicked();
    void on_combo_fieldColor_currentIndexChanged(int index);
    void on_check_showIDs_stateChanged(int arg1);
    void on_combo_botScale_currentIndexChanged(int index);
    void field_setDragMode();
    void updateSelectedBotPanel(int id);
    void on_btn_botForward_pressed();
    void on_btn_botForward_released();
    void on_btn_botTurnRight_pressed();
    void on_btn_botTurnRight_released();
    void on_btn_botReverse_pressed();
    void on_btn_botReverse_released();
    void on_btn_botTurnLeft_pressed();
    void on_btn_botTurnLeft_released();
    void on_btn_botKick_pressed();
    void on_btn_botKick_released();
    void on_btn_botDrible_pressed();
    void on_btn_botDrible_released();
    void on_check_botOverride_clicked(bool checked);
    void on_check_botOverride_all_clicked(bool checked);
};

#endif // MAINWINDOW_H


