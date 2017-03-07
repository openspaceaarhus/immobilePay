#-------------------------------------------------
#
# Project created by QtCreator 2017-03-01T07:53:06
#
#-------------------------------------------------

QT       += testlib

QT       -= gui

TARGET = tst_TestStatemachine
CONFIG   += console
CONFIG   -= app_bundle

TEMPLATE = app
QMAKE_CXXFLAGS += --std=c++14

SOURCES += tst_TestStatemachine.cpp
DEFINES += SRCDIR=\\\"$$PWD/\\\"

win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../../lib/stateMachine/release/ -lstateMachine
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../../lib/stateMachine/debug/ -lstateMachine
else:unix: LIBS += -L$$OUT_PWD/../../lib/stateMachine/ -lstateMachine

INCLUDEPATH += $$PWD/../../lib/stateMachine \
	../../../lib/qImmobilePayLib/lib/sml/include
INCLUDEPATH += $$PWD/../../lib/UserDatabase
DEPENDPATH += $$PWD/../../lib/UserDatabase
DEPENDPATH += $$PWD/../../lib/stateMachine

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../../lib/stateMachine/release/libstateMachine.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../../lib/stateMachine/debug/libstateMachine.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../../lib/stateMachine/release/stateMachine.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../../lib/stateMachine/debug/stateMachine.lib
else:unix: PRE_TARGETDEPS += $$OUT_PWD/../../lib/stateMachine/libstateMachine.a

win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../../lib/UserDatabase/release/ -lUserDatabase
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../../lib/UserDatabase/debug/ -lUserDatabase
else:unix: LIBS += -L$$OUT_PWD/../../lib/UserDatabase/ -lUserDatabase


win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../../lib/UserDatabase/release/libUserDatabase.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../../lib/UserDatabase/debug/libUserDatabase.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../../lib/UserDatabase/release/UserDatabase.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../../lib/UserDatabase/debug/UserDatabase.lib
else:unix: PRE_TARGETDEPS += $$OUT_PWD/../../lib/UserDatabase/libUserDatabase.a
