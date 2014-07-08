#############################################################################
# Makefile for building: RoboBulls
# Generated by qmake (2.01a) (Qt 4.8.3) on: Thu Jul 3 17:10:33 2014
# Project:  RoboBulls.pro
# Template: app
# Command: /usr/bin/qmake-qt4 -spec /usr/share/qt4/mkspecs/linux-g++ CONFIG+=debug CONFIG+=declarative_debug -o Makefile RoboBulls.pro
#############################################################################

####### Compiler, tools and options

CC            = gcc
CXX           = g++
DEFINES       = -DQT_WEBKIT -DQT_NETWORK_LIB -DQT_CORE_LIB -DQT_SHARED
CFLAGS        = -pipe -g -Wall -W -D_REENTRANT $(DEFINES)
CXXFLAGS      = -pipe -std=c++0x -g -Wall -W -D_REENTRANT $(DEFINES)
INCPATH       = -I/usr/share/qt4/mkspecs/linux-g++ -I. -I/usr/include/qt4/QtCore -I/usr/include/qt4/QtNetwork -I/usr/include/qt4 -I.
LINK          = g++
LFLAGS        = 
LIBS          = $(SUBLIBS)  -L/usr/lib/x86_64-linux-gnu -lprotobuf -lQtNetwork -lQtCore -lpthread 
AR            = ar cqs
RANLIB        = 
QMAKE         = /usr/bin/qmake-qt4
TAR           = tar -cf
COMPRESS      = gzip -9f
COPY          = cp -f
SED           = sed
COPY_FILE     = $(COPY)
COPY_DIR      = $(COPY) -r
STRIP         = strip
INSTALL_FILE  = install -m 644 -p
INSTALL_DIR   = $(COPY_DIR)
INSTALL_PROGRAM = install -m 755 -p
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p

####### Output directory

OBJECTS_DIR   = ./

####### Files

SOURCES       = main.cpp \
		behavior/behavior.cpp \
		behavior/defendoneonone.cpp \
		behavior/driveballandkick.cpp \
		behavior/kicktogoal.cpp \
		behavior/penaltybehavior.cpp \
		behavior/stopbehavior.cpp \
		communication/nxtrobcomm.cpp \
		communication/refcomm.cpp \
		communication/robcomm.cpp \
		communication/simrobcomm.cpp \
		communication/visioncomm.cpp \
		include/grSim_Commands.pb.cc \
		include/grSim_Packet.pb.cc \
		include/grSim_Replacement.pb.cc \
		include/messages_robocup_ssl_detection.pb.cc \
		include/messages_robocup_ssl_geometry.pb.cc \
		include/messages_robocup_ssl_refbox_log.pb.cc \
		include/messages_robocup_ssl_wrapper.pb.cc \
		include/netraw.cpp \
		include/robocup_ssl_client.cpp \
		include/serialib.cpp \
		model/gamemodel.cpp \
		model/robot.cpp \
		skill/basic_movement.cpp \
		skill/differential_control/closedloopcontrol.cpp \
		skill/differential_control/matrixcalculator.cpp \
		skill/differential_control/robottoinertialvelocities.cpp \
		skill/driveball.cpp \
		skill/gotopositionwithorientation.cpp \
		skill/kick.cpp \
		skill/obstacleavoidmove.cpp \
		skill/pathfinding/fppa_pathfinding.cpp \
		skill/waitforball.cpp \
		strategy/penaltystrategy.cpp \
		strategy/stopstrategy.cpp \
		strategy/strategy.cpp \
		strategy/strategycontroller.cpp \
		strategy/teststrategy.cpp \
		utilities/measurments.cpp \
		utilities/paramlist.cpp \
		utilities/point.cpp \
		utilities/skillsequence.cpp \
		behavior/mytestbehavior.cpp 
OBJECTS       = main.o \
		behavior.o \
		defendoneonone.o \
		driveballandkick.o \
		kicktogoal.o \
		penaltybehavior.o \
		stopbehavior.o \
		nxtrobcomm.o \
		refcomm.o \
		robcomm.o \
		simrobcomm.o \
		visioncomm.o \
		grSim_Commands.pb.o \
		grSim_Packet.pb.o \
		grSim_Replacement.pb.o \
		messages_robocup_ssl_detection.pb.o \
		messages_robocup_ssl_geometry.pb.o \
		messages_robocup_ssl_refbox_log.pb.o \
		messages_robocup_ssl_wrapper.pb.o \
		netraw.o \
		robocup_ssl_client.o \
		serialib.o \
		gamemodel.o \
		robot.o \
		basic_movement.o \
		closedloopcontrol.o \
		matrixcalculator.o \
		robottoinertialvelocities.o \
		driveball.o \
		gotopositionwithorientation.o \
		kick.o \
		obstacleavoidmove.o \
		fppa_pathfinding.o \
		waitforball.o \
		penaltystrategy.o \
		stopstrategy.o \
		strategy.o \
		strategycontroller.o \
		teststrategy.o \
		measurments.o \
		paramlist.o \
		point.o \
		skillsequence.o \
		mytestbehavior.o
DIST          = /usr/share/qt4/mkspecs/common/unix.conf \
		/usr/share/qt4/mkspecs/common/linux.conf \
		/usr/share/qt4/mkspecs/common/gcc-base.conf \
		/usr/share/qt4/mkspecs/common/gcc-base-unix.conf \
		/usr/share/qt4/mkspecs/common/g++-base.conf \
		/usr/share/qt4/mkspecs/common/g++-unix.conf \
		/usr/share/qt4/mkspecs/qconfig.pri \
		/usr/share/qt4/mkspecs/modules/qt_webkit_version.pri \
		/usr/share/qt4/mkspecs/features/qt_functions.prf \
		/usr/share/qt4/mkspecs/features/qt_config.prf \
		/usr/share/qt4/mkspecs/features/exclusive_builds.prf \
		/usr/share/qt4/mkspecs/features/default_pre.prf \
		/usr/share/qt4/mkspecs/features/debug.prf \
		/usr/share/qt4/mkspecs/features/default_post.prf \
		/usr/share/qt4/mkspecs/features/declarative_debug.prf \
		/usr/share/qt4/mkspecs/features/unix/gdb_dwarf_index.prf \
		/usr/share/qt4/mkspecs/features/warn_on.prf \
		/usr/share/qt4/mkspecs/features/qt.prf \
		/usr/share/qt4/mkspecs/features/unix/thread.prf \
		/usr/share/qt4/mkspecs/features/moc.prf \
		/usr/share/qt4/mkspecs/features/resources.prf \
		/usr/share/qt4/mkspecs/features/uic.prf \
		/usr/share/qt4/mkspecs/features/yacc.prf \
		/usr/share/qt4/mkspecs/features/lex.prf \
		/usr/share/qt4/mkspecs/features/include_source_dir.prf \
		RoboBulls.pro
QMAKE_TARGET  = RoboBulls
DESTDIR       = 
TARGET        = RoboBulls

first: all
####### Implicit rules

.SUFFIXES: .o .c .cpp .cc .cxx .C

.cpp.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cc.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cxx.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.C.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.c.o:
	$(CC) -c $(CFLAGS) $(INCPATH) -o "$@" "$<"

####### Build rules

all: Makefile $(TARGET)

$(TARGET):  $(OBJECTS)  
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)
	{ test -n "$(DESTDIR)" && DESTDIR="$(DESTDIR)" || DESTDIR=.; } && test $$(gdb --version | sed -e 's,[^0-9]\+\([0-9]\)\.\([0-9]\).*,\1\2,;q') -gt 72 && gdb --nx --batch --quiet -ex 'set confirm off' -ex "save gdb-index $$DESTDIR" -ex quit '$(TARGET)' && test -f $(TARGET).gdb-index && objcopy --add-section '.gdb_index=$(TARGET).gdb-index' --set-section-flags '.gdb_index=readonly' '$(TARGET)' '$(TARGET)' && rm -f $(TARGET).gdb-index || true

Makefile: RoboBulls.pro  /usr/share/qt4/mkspecs/linux-g++/qmake.conf /usr/share/qt4/mkspecs/common/unix.conf \
		/usr/share/qt4/mkspecs/common/linux.conf \
		/usr/share/qt4/mkspecs/common/gcc-base.conf \
		/usr/share/qt4/mkspecs/common/gcc-base-unix.conf \
		/usr/share/qt4/mkspecs/common/g++-base.conf \
		/usr/share/qt4/mkspecs/common/g++-unix.conf \
		/usr/share/qt4/mkspecs/qconfig.pri \
		/usr/share/qt4/mkspecs/modules/qt_webkit_version.pri \
		/usr/share/qt4/mkspecs/features/qt_functions.prf \
		/usr/share/qt4/mkspecs/features/qt_config.prf \
		/usr/share/qt4/mkspecs/features/exclusive_builds.prf \
		/usr/share/qt4/mkspecs/features/default_pre.prf \
		/usr/share/qt4/mkspecs/features/debug.prf \
		/usr/share/qt4/mkspecs/features/default_post.prf \
		/usr/share/qt4/mkspecs/features/declarative_debug.prf \
		/usr/share/qt4/mkspecs/features/unix/gdb_dwarf_index.prf \
		/usr/share/qt4/mkspecs/features/warn_on.prf \
		/usr/share/qt4/mkspecs/features/qt.prf \
		/usr/share/qt4/mkspecs/features/unix/thread.prf \
		/usr/share/qt4/mkspecs/features/moc.prf \
		/usr/share/qt4/mkspecs/features/resources.prf \
		/usr/share/qt4/mkspecs/features/uic.prf \
		/usr/share/qt4/mkspecs/features/yacc.prf \
		/usr/share/qt4/mkspecs/features/lex.prf \
		/usr/share/qt4/mkspecs/features/include_source_dir.prf \
		/usr/lib/x86_64-linux-gnu/libQtNetwork.prl \
		/usr/lib/x86_64-linux-gnu/libQtCore.prl
	$(QMAKE) -spec /usr/share/qt4/mkspecs/linux-g++ CONFIG+=debug CONFIG+=declarative_debug -o Makefile RoboBulls.pro
/usr/share/qt4/mkspecs/common/unix.conf:
/usr/share/qt4/mkspecs/common/linux.conf:
/usr/share/qt4/mkspecs/common/gcc-base.conf:
/usr/share/qt4/mkspecs/common/gcc-base-unix.conf:
/usr/share/qt4/mkspecs/common/g++-base.conf:
/usr/share/qt4/mkspecs/common/g++-unix.conf:
/usr/share/qt4/mkspecs/qconfig.pri:
/usr/share/qt4/mkspecs/modules/qt_webkit_version.pri:
/usr/share/qt4/mkspecs/features/qt_functions.prf:
/usr/share/qt4/mkspecs/features/qt_config.prf:
/usr/share/qt4/mkspecs/features/exclusive_builds.prf:
/usr/share/qt4/mkspecs/features/default_pre.prf:
/usr/share/qt4/mkspecs/features/debug.prf:
/usr/share/qt4/mkspecs/features/default_post.prf:
/usr/share/qt4/mkspecs/features/declarative_debug.prf:
/usr/share/qt4/mkspecs/features/unix/gdb_dwarf_index.prf:
/usr/share/qt4/mkspecs/features/warn_on.prf:
/usr/share/qt4/mkspecs/features/qt.prf:
/usr/share/qt4/mkspecs/features/unix/thread.prf:
/usr/share/qt4/mkspecs/features/moc.prf:
/usr/share/qt4/mkspecs/features/resources.prf:
/usr/share/qt4/mkspecs/features/uic.prf:
/usr/share/qt4/mkspecs/features/yacc.prf:
/usr/share/qt4/mkspecs/features/lex.prf:
/usr/share/qt4/mkspecs/features/include_source_dir.prf:
/usr/lib/x86_64-linux-gnu/libQtNetwork.prl:
/usr/lib/x86_64-linux-gnu/libQtCore.prl:
qmake:  FORCE
	@$(QMAKE) -spec /usr/share/qt4/mkspecs/linux-g++ CONFIG+=debug CONFIG+=declarative_debug -o Makefile RoboBulls.pro

dist: 
	@$(CHK_DIR_EXISTS) .tmp/RoboBulls1.0.0 || $(MKDIR) .tmp/RoboBulls1.0.0 
	$(COPY_FILE) --parents $(SOURCES) $(DIST) .tmp/RoboBulls1.0.0/ && $(COPY_FILE) --parents behavior/behavior.h behavior/behaviorassignment.h behavior/defendoneonone.h behavior/driveballandkick.h behavior/kicktogoal.h behavior/obstacleavoidbehavior.h behavior/penaltybehavior.h behavior/stopbehavior.h communication/nxtrobcomm.h communication/refcomm.h communication/robcomm.h communication/simrobcomm.h communication/visioncomm.h include/globals.h include/grSim_Commands.pb.h include/grSim_Packet.pb.h include/grSim_Replacement.pb.h include/messages_robocup_ssl_detection.pb.h include/messages_robocup_ssl_geometry.pb.h include/messages_robocup_ssl_refbox_log.pb.h include/messages_robocup_ssl_wrapper.pb.h include/netraw.h include/robocup_ssl_client.h include/serialib.h include/timer.h include/util.h model/gamemodel.h model/robot.h skill/basic_movement.h skill/differential_control/closedloopcontrol.h skill/differential_control/matrixcalculator.h skill/differential_control/robottoinertialvelocities.h skill/driveball.h skill/gotopositionwithorientation.h skill/kick.h skill/obstacleavoidmove.h utilities/skillsequence.h skill/pathfinding/fppa_pathfinding.h skill/skill.h skill/waitforball.h strategy/penaltystrategy.h strategy/stopstrategy.h strategy/strategy.h strategy/strategycontroller.h strategy/teststrategy.h utilities/measurments.h utilities/paramlist.h utilities/point.h utilities/skillsequence.h behavior/mytestbehavior.h .tmp/RoboBulls1.0.0/ && $(COPY_FILE) --parents main.cpp behavior/behavior.cpp behavior/defendoneonone.cpp behavior/driveballandkick.cpp behavior/kicktogoal.cpp behavior/penaltybehavior.cpp behavior/stopbehavior.cpp communication/nxtrobcomm.cpp communication/refcomm.cpp communication/robcomm.cpp communication/simrobcomm.cpp communication/visioncomm.cpp include/grSim_Commands.pb.cc include/grSim_Packet.pb.cc include/grSim_Replacement.pb.cc include/messages_robocup_ssl_detection.pb.cc include/messages_robocup_ssl_geometry.pb.cc include/messages_robocup_ssl_refbox_log.pb.cc include/messages_robocup_ssl_wrapper.pb.cc include/netraw.cpp include/robocup_ssl_client.cpp include/serialib.cpp model/gamemodel.cpp model/robot.cpp skill/basic_movement.cpp skill/differential_control/closedloopcontrol.cpp skill/differential_control/matrixcalculator.cpp skill/differential_control/robottoinertialvelocities.cpp skill/driveball.cpp skill/gotopositionwithorientation.cpp skill/kick.cpp skill/obstacleavoidmove.cpp skill/pathfinding/fppa_pathfinding.cpp skill/waitforball.cpp strategy/penaltystrategy.cpp strategy/stopstrategy.cpp strategy/strategy.cpp strategy/strategycontroller.cpp strategy/teststrategy.cpp utilities/measurments.cpp utilities/paramlist.cpp utilities/point.cpp utilities/skillsequence.cpp behavior/mytestbehavior.cpp .tmp/RoboBulls1.0.0/ && (cd `dirname .tmp/RoboBulls1.0.0` && $(TAR) RoboBulls1.0.0.tar RoboBulls1.0.0 && $(COMPRESS) RoboBulls1.0.0.tar) && $(MOVE) `dirname .tmp/RoboBulls1.0.0`/RoboBulls1.0.0.tar.gz . && $(DEL_FILE) -r .tmp/RoboBulls1.0.0


clean:compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


####### Sub-libraries

distclean: clean
	-$(DEL_FILE) $(TARGET) 
	-$(DEL_FILE) Makefile


check: first

mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all

compiler_moc_header_make_all:
compiler_moc_header_clean:
compiler_rcc_make_all:
compiler_rcc_clean:
compiler_image_collection_make_all: qmake_image_collection.cpp
compiler_image_collection_clean:
	-$(DEL_FILE) qmake_image_collection.cpp
compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_uic_make_all:
compiler_uic_clean:
compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: 

####### Compile

main.o: main.cpp communication/refcomm.h \
		include/netraw.h \
		model/gamemodel.h \
		utilities/measurments.h \
		utilities/point.h \
		include/globals.h \
		model/robot.h \
		behavior/behavior.h \
		strategy/strategycontroller.h \
		include/messages_robocup_ssl_detection.pb.h \
		include/messages_robocup_ssl_geometry.pb.h \
		include/messages_robocup_ssl_wrapper.pb.h \
		include/robocup_ssl_client.h \
		include/messages_robocup_ssl_refbox_log.pb.h \
		communication/visioncomm.h \
		communication/robcomm.h \
		include/serialib.h \
		communication/simrobcomm.h \
		include/grSim_Packet.pb.h \
		include/grSim_Commands.pb.h \
		include/grSim_Replacement.pb.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o main.o main.cpp

behavior.o: behavior/behavior.cpp behavior/behavior.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o behavior.o behavior/behavior.cpp

defendoneonone.o: behavior/defendoneonone.cpp behavior/defendoneonone.h \
		behavior/behavior.h \
		utilities/paramlist.h \
		skill/gotopositionwithorientation.h \
		skill/skill.h \
		model/robot.h \
		utilities/point.h \
		communication/robcomm.h \
		include/serialib.h \
		skill/differential_control/closedloopcontrol.h \
		model/gamemodel.h \
		utilities/measurments.h \
		include/globals.h \
		strategy/strategycontroller.h \
		include/messages_robocup_ssl_detection.pb.h \
		include/messages_robocup_ssl_geometry.pb.h \
		include/messages_robocup_ssl_wrapper.pb.h \
		include/robocup_ssl_client.h \
		include/netraw.h \
		include/messages_robocup_ssl_refbox_log.pb.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o defendoneonone.o behavior/defendoneonone.cpp

driveballandkick.o: behavior/driveballandkick.cpp behavior/driveballandkick.h \
		behavior/behavior.h \
		skill/skill.h \
		model/robot.h \
		utilities/point.h \
		communication/robcomm.h \
		include/serialib.h \
		utilities/paramlist.h \
		model/gamemodel.h \
		utilities/measurments.h \
		include/globals.h \
		strategy/strategycontroller.h \
		include/messages_robocup_ssl_detection.pb.h \
		include/messages_robocup_ssl_geometry.pb.h \
		include/messages_robocup_ssl_wrapper.pb.h \
		include/robocup_ssl_client.h \
		include/netraw.h \
		include/messages_robocup_ssl_refbox_log.pb.h \
		skill/driveball.h \
		skill/basic_movement.h \
		skill/kick.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o driveballandkick.o behavior/driveballandkick.cpp

kicktogoal.o: behavior/kicktogoal.cpp behavior/kicktogoal.h \
		behavior/behavior.h \
		utilities/paramlist.h \
		model/gamemodel.h \
		utilities/measurments.h \
		utilities/point.h \
		include/globals.h \
		model/robot.h \
		strategy/strategycontroller.h \
		include/messages_robocup_ssl_detection.pb.h \
		include/messages_robocup_ssl_geometry.pb.h \
		include/messages_robocup_ssl_wrapper.pb.h \
		include/robocup_ssl_client.h \
		include/netraw.h \
		include/messages_robocup_ssl_refbox_log.pb.h \
		skill/skill.h \
		communication/robcomm.h \
		include/serialib.h \
		skill/gotopositionwithorientation.h \
		skill/differential_control/closedloopcontrol.h \
		skill/kick.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o kicktogoal.o behavior/kicktogoal.cpp

penaltybehavior.o: behavior/penaltybehavior.cpp behavior/penaltybehavior.h \
		behavior/behavior.h \
		skill/skill.h \
		model/robot.h \
		utilities/point.h \
		communication/robcomm.h \
		include/serialib.h \
		skill/basic_movement.h \
		skill/kick.h \
		skill/gotopositionwithorientation.h \
		skill/differential_control/closedloopcontrol.h \
		model/gamemodel.h \
		utilities/measurments.h \
		include/globals.h \
		strategy/strategycontroller.h \
		include/messages_robocup_ssl_detection.pb.h \
		include/messages_robocup_ssl_geometry.pb.h \
		include/messages_robocup_ssl_wrapper.pb.h \
		include/robocup_ssl_client.h \
		include/netraw.h \
		include/messages_robocup_ssl_refbox_log.pb.h \
		utilities/paramlist.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o penaltybehavior.o behavior/penaltybehavior.cpp

stopbehavior.o: behavior/stopbehavior.cpp model/robot.h \
		utilities/point.h \
		behavior/behavior.h \
		skill/gotopositionwithorientation.h \
		skill/skill.h \
		communication/robcomm.h \
		include/serialib.h \
		skill/differential_control/closedloopcontrol.h \
		behavior/stopbehavior.h \
		utilities/measurments.h \
		include/globals.h \
		model/gamemodel.h \
		strategy/strategycontroller.h \
		include/messages_robocup_ssl_detection.pb.h \
		include/messages_robocup_ssl_geometry.pb.h \
		include/messages_robocup_ssl_wrapper.pb.h \
		include/robocup_ssl_client.h \
		include/netraw.h \
		include/messages_robocup_ssl_refbox_log.pb.h \
		utilities/paramlist.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o stopbehavior.o behavior/stopbehavior.cpp

nxtrobcomm.o: communication/nxtrobcomm.cpp communication/nxtrobcomm.h \
		include/serialib.h \
		communication/robcomm.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o nxtrobcomm.o communication/nxtrobcomm.cpp

refcomm.o: communication/refcomm.cpp communication/refcomm.h \
		include/netraw.h \
		model/gamemodel.h \
		utilities/measurments.h \
		utilities/point.h \
		include/globals.h \
		model/robot.h \
		behavior/behavior.h \
		strategy/strategycontroller.h \
		include/messages_robocup_ssl_detection.pb.h \
		include/messages_robocup_ssl_geometry.pb.h \
		include/messages_robocup_ssl_wrapper.pb.h \
		include/robocup_ssl_client.h \
		include/messages_robocup_ssl_refbox_log.pb.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o refcomm.o communication/refcomm.cpp

robcomm.o: communication/robcomm.cpp communication/robcomm.h \
		include/serialib.h \
		include/globals.h \
		communication/simrobcomm.h \
		include/grSim_Packet.pb.h \
		include/grSim_Commands.pb.h \
		include/grSim_Replacement.pb.h \
		communication/nxtrobcomm.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o robcomm.o communication/robcomm.cpp

simrobcomm.o: communication/simrobcomm.cpp communication/simrobcomm.h \
		include/grSim_Packet.pb.h \
		include/grSim_Commands.pb.h \
		include/grSim_Replacement.pb.h \
		communication/robcomm.h \
		include/serialib.h \
		include/globals.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o simrobcomm.o communication/simrobcomm.cpp

visioncomm.o: communication/visioncomm.cpp communication/visioncomm.h \
		include/netraw.h \
		model/gamemodel.h \
		utilities/measurments.h \
		utilities/point.h \
		include/globals.h \
		model/robot.h \
		behavior/behavior.h \
		strategy/strategycontroller.h \
		include/messages_robocup_ssl_detection.pb.h \
		include/messages_robocup_ssl_geometry.pb.h \
		include/messages_robocup_ssl_wrapper.pb.h \
		include/robocup_ssl_client.h \
		include/messages_robocup_ssl_refbox_log.pb.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o visioncomm.o communication/visioncomm.cpp

grSim_Commands.pb.o: include/grSim_Commands.pb.cc include/grSim_Commands.pb.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o grSim_Commands.pb.o include/grSim_Commands.pb.cc

grSim_Packet.pb.o: include/grSim_Packet.pb.cc include/grSim_Packet.pb.h \
		include/grSim_Commands.pb.h \
		include/grSim_Replacement.pb.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o grSim_Packet.pb.o include/grSim_Packet.pb.cc

grSim_Replacement.pb.o: include/grSim_Replacement.pb.cc include/grSim_Replacement.pb.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o grSim_Replacement.pb.o include/grSim_Replacement.pb.cc

messages_robocup_ssl_detection.pb.o: include/messages_robocup_ssl_detection.pb.cc include/messages_robocup_ssl_detection.pb.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o messages_robocup_ssl_detection.pb.o include/messages_robocup_ssl_detection.pb.cc

messages_robocup_ssl_geometry.pb.o: include/messages_robocup_ssl_geometry.pb.cc include/messages_robocup_ssl_geometry.pb.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o messages_robocup_ssl_geometry.pb.o include/messages_robocup_ssl_geometry.pb.cc

messages_robocup_ssl_refbox_log.pb.o: include/messages_robocup_ssl_refbox_log.pb.cc include/messages_robocup_ssl_refbox_log.pb.h \
		include/messages_robocup_ssl_detection.pb.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o messages_robocup_ssl_refbox_log.pb.o include/messages_robocup_ssl_refbox_log.pb.cc

messages_robocup_ssl_wrapper.pb.o: include/messages_robocup_ssl_wrapper.pb.cc include/messages_robocup_ssl_wrapper.pb.h \
		include/messages_robocup_ssl_detection.pb.h \
		include/messages_robocup_ssl_geometry.pb.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o messages_robocup_ssl_wrapper.pb.o include/messages_robocup_ssl_wrapper.pb.cc

netraw.o: include/netraw.cpp include/util.h \
		include/netraw.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o netraw.o include/netraw.cpp

robocup_ssl_client.o: include/robocup_ssl_client.cpp include/robocup_ssl_client.h \
		include/netraw.h \
		include/messages_robocup_ssl_detection.pb.h \
		include/messages_robocup_ssl_geometry.pb.h \
		include/messages_robocup_ssl_wrapper.pb.h \
		include/messages_robocup_ssl_refbox_log.pb.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o robocup_ssl_client.o include/robocup_ssl_client.cpp

serialib.o: include/serialib.cpp include/serialib.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o serialib.o include/serialib.cpp

gamemodel.o: model/gamemodel.cpp model/gamemodel.h \
		utilities/measurments.h \
		utilities/point.h \
		include/globals.h \
		model/robot.h \
		behavior/behavior.h \
		strategy/strategycontroller.h \
		include/messages_robocup_ssl_detection.pb.h \
		include/messages_robocup_ssl_geometry.pb.h \
		include/messages_robocup_ssl_wrapper.pb.h \
		include/robocup_ssl_client.h \
		include/netraw.h \
		include/messages_robocup_ssl_refbox_log.pb.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o gamemodel.o model/gamemodel.cpp

robot.o: model/robot.cpp model/robot.h \
		utilities/point.h \
		behavior/behavior.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o robot.o model/robot.cpp

basic_movement.o: skill/basic_movement.cpp skill/basic_movement.h \
		skill/skill.h \
		model/robot.h \
		utilities/point.h \
		behavior/behavior.h \
		communication/robcomm.h \
		include/serialib.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o basic_movement.o skill/basic_movement.cpp

closedloopcontrol.o: skill/differential_control/closedloopcontrol.cpp skill/differential_control/closedloopcontrol.h \
		model/robot.h \
		utilities/point.h \
		behavior/behavior.h \
		utilities/measurments.h \
		include/globals.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o closedloopcontrol.o skill/differential_control/closedloopcontrol.cpp

matrixcalculator.o: skill/differential_control/matrixcalculator.cpp skill/differential_control/matrixcalculator.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o matrixcalculator.o skill/differential_control/matrixcalculator.cpp

robottoinertialvelocities.o: skill/differential_control/robottoinertialvelocities.cpp skill/differential_control/robottoinertialvelocities.h \
		skill/differential_control/matrixcalculator.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o robottoinertialvelocities.o skill/differential_control/robottoinertialvelocities.cpp

driveball.o: skill/driveball.cpp skill/driveball.h \
		skill/skill.h \
		model/robot.h \
		utilities/point.h \
		behavior/behavior.h \
		communication/robcomm.h \
		include/serialib.h \
		model/gamemodel.h \
		utilities/measurments.h \
		include/globals.h \
		strategy/strategycontroller.h \
		include/messages_robocup_ssl_detection.pb.h \
		include/messages_robocup_ssl_geometry.pb.h \
		include/messages_robocup_ssl_wrapper.pb.h \
		include/robocup_ssl_client.h \
		include/netraw.h \
		include/messages_robocup_ssl_refbox_log.pb.h \
		skill/gotopositionwithorientation.h \
		skill/differential_control/closedloopcontrol.h \
		skill/basic_movement.h \
		utilities/skillsequence.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o driveball.o skill/driveball.cpp

gotopositionwithorientation.o: skill/gotopositionwithorientation.cpp skill/gotopositionwithorientation.h \
		skill/skill.h \
		model/robot.h \
		utilities/point.h \
		behavior/behavior.h \
		communication/robcomm.h \
		include/serialib.h \
		skill/differential_control/closedloopcontrol.h \
		utilities/measurments.h \
		include/globals.h \
		include/util.h \
		model/gamemodel.h \
		strategy/strategycontroller.h \
		include/messages_robocup_ssl_detection.pb.h \
		include/messages_robocup_ssl_geometry.pb.h \
		include/messages_robocup_ssl_wrapper.pb.h \
		include/robocup_ssl_client.h \
		include/netraw.h \
		include/messages_robocup_ssl_refbox_log.pb.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o gotopositionwithorientation.o skill/gotopositionwithorientation.cpp

kick.o: skill/kick.cpp skill/kick.h \
		skill/skill.h \
		model/robot.h \
		utilities/point.h \
		behavior/behavior.h \
		communication/robcomm.h \
		include/serialib.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o kick.o skill/kick.cpp

obstacleavoidmove.o: skill/obstacleavoidmove.cpp utilities/measurments.h \
		utilities/point.h \
		include/globals.h \
		skill/gotopositionwithorientation.h \
		skill/skill.h \
		model/robot.h \
		behavior/behavior.h \
		communication/robcomm.h \
		include/serialib.h \
		skill/differential_control/closedloopcontrol.h \
		skill/pathfinding/fppa_pathfinding.h \
		skill/obstacleavoidmove.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o obstacleavoidmove.o skill/obstacleavoidmove.cpp

fppa_pathfinding.o: skill/pathfinding/fppa_pathfinding.cpp utilities/measurments.h \
		utilities/point.h \
		include/globals.h \
		model/gamemodel.h \
		model/robot.h \
		behavior/behavior.h \
		strategy/strategycontroller.h \
		include/messages_robocup_ssl_detection.pb.h \
		include/messages_robocup_ssl_geometry.pb.h \
		include/messages_robocup_ssl_wrapper.pb.h \
		include/robocup_ssl_client.h \
		include/netraw.h \
		include/messages_robocup_ssl_refbox_log.pb.h \
		skill/pathfinding/fppa_pathfinding.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o fppa_pathfinding.o skill/pathfinding/fppa_pathfinding.cpp

waitforball.o: skill/waitforball.cpp skill/waitforball.h \
		model/robot.h \
		utilities/point.h \
		behavior/behavior.h \
		skill/skill.h \
		communication/robcomm.h \
		include/serialib.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o waitforball.o skill/waitforball.cpp

penaltystrategy.o: strategy/penaltystrategy.cpp strategy/penaltystrategy.h \
		strategy/strategy.h \
		model/gamemodel.h \
		utilities/measurments.h \
		utilities/point.h \
		include/globals.h \
		model/robot.h \
		behavior/behavior.h \
		strategy/strategycontroller.h \
		include/messages_robocup_ssl_detection.pb.h \
		include/messages_robocup_ssl_geometry.pb.h \
		include/messages_robocup_ssl_wrapper.pb.h \
		include/robocup_ssl_client.h \
		include/netraw.h \
		include/messages_robocup_ssl_refbox_log.pb.h \
		behavior/penaltybehavior.h \
		skill/skill.h \
		communication/robcomm.h \
		include/serialib.h \
		skill/basic_movement.h \
		skill/kick.h \
		skill/gotopositionwithorientation.h \
		skill/differential_control/closedloopcontrol.h \
		utilities/paramlist.h \
		behavior/behaviorassignment.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o penaltystrategy.o strategy/penaltystrategy.cpp

stopstrategy.o: strategy/stopstrategy.cpp strategy/stopstrategy.h \
		strategy/strategy.h \
		model/gamemodel.h \
		utilities/measurments.h \
		utilities/point.h \
		include/globals.h \
		model/robot.h \
		behavior/behavior.h \
		strategy/strategycontroller.h \
		include/messages_robocup_ssl_detection.pb.h \
		include/messages_robocup_ssl_geometry.pb.h \
		include/messages_robocup_ssl_wrapper.pb.h \
		include/robocup_ssl_client.h \
		include/netraw.h \
		include/messages_robocup_ssl_refbox_log.pb.h \
		behavior/behaviorassignment.h \
		utilities/paramlist.h \
		behavior/stopbehavior.h \
		skill/skill.h \
		communication/robcomm.h \
		include/serialib.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o stopstrategy.o strategy/stopstrategy.cpp

strategy.o: strategy/strategy.cpp strategy/strategy.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o strategy.o strategy/strategy.cpp

strategycontroller.o: strategy/strategycontroller.cpp strategy/strategycontroller.h \
		strategy/strategy.h \
		model/gamemodel.h \
		utilities/measurments.h \
		utilities/point.h \
		include/globals.h \
		model/robot.h \
		behavior/behavior.h \
		include/messages_robocup_ssl_detection.pb.h \
		include/messages_robocup_ssl_geometry.pb.h \
		include/messages_robocup_ssl_wrapper.pb.h \
		include/robocup_ssl_client.h \
		include/netraw.h \
		include/messages_robocup_ssl_refbox_log.pb.h \
		strategy/stopstrategy.h \
		strategy/penaltystrategy.h \
		behavior/penaltybehavior.h \
		skill/skill.h \
		communication/robcomm.h \
		include/serialib.h \
		skill/basic_movement.h \
		skill/kick.h \
		skill/gotopositionwithorientation.h \
		skill/differential_control/closedloopcontrol.h \
		utilities/paramlist.h \
		strategy/teststrategy.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o strategycontroller.o strategy/strategycontroller.cpp

teststrategy.o: strategy/teststrategy.cpp strategy/teststrategy.h \
		strategy/strategy.h \
		behavior/behaviorassignment.h \
		model/gamemodel.h \
		utilities/measurments.h \
		utilities/point.h \
		include/globals.h \
		model/robot.h \
		behavior/behavior.h \
		strategy/strategycontroller.h \
		include/messages_robocup_ssl_detection.pb.h \
		include/messages_robocup_ssl_geometry.pb.h \
		include/messages_robocup_ssl_wrapper.pb.h \
		include/robocup_ssl_client.h \
		include/netraw.h \
		include/messages_robocup_ssl_refbox_log.pb.h \
		utilities/paramlist.h \
		behavior/kicktogoal.h \
		behavior/defendoneonone.h \
		behavior/driveballandkick.h \
		skill/skill.h \
		communication/robcomm.h \
		include/serialib.h \
		skill/differential_control/closedloopcontrol.h \
		skill/gotopositionwithorientation.h \
		skill/obstacleavoidmove.h \
		skill/basic_movement.h \
		utilities/skillsequence.h \
		behavior/mytestbehavior.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o teststrategy.o strategy/teststrategy.cpp

measurments.o: utilities/measurments.cpp utilities/measurments.h \
		utilities/point.h \
		include/globals.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o measurments.o utilities/measurments.cpp

paramlist.o: utilities/paramlist.cpp utilities/paramlist.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o paramlist.o utilities/paramlist.cpp

point.o: utilities/point.cpp utilities/point.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o point.o utilities/point.cpp

skillsequence.o: utilities/skillsequence.cpp utilities/skillsequence.h \
		skill/skill.h \
		model/robot.h \
		utilities/point.h \
		behavior/behavior.h \
		communication/robcomm.h \
		include/serialib.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o skillsequence.o utilities/skillsequence.cpp

mytestbehavior.o: behavior/mytestbehavior.cpp behavior/mytestbehavior.h \
		behavior/behavior.h \
		skill/skill.h \
		model/robot.h \
		utilities/point.h \
		communication/robcomm.h \
		include/serialib.h \
		utilities/measurments.h \
		include/globals.h \
		model/gamemodel.h \
		strategy/strategycontroller.h \
		include/messages_robocup_ssl_detection.pb.h \
		include/messages_robocup_ssl_geometry.pb.h \
		include/messages_robocup_ssl_wrapper.pb.h \
		include/robocup_ssl_client.h \
		include/netraw.h \
		include/messages_robocup_ssl_refbox_log.pb.h \
		utilities/paramlist.h \
		skill/gotopositionwithorientation.h \
		skill/differential_control/closedloopcontrol.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o mytestbehavior.o behavior/mytestbehavior.cpp

####### Install

install:   FORCE

uninstall:   FORCE

FORCE:

