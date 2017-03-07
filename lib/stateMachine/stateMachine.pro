#-------------------------------------------------
#
# Project created by QtCreator 2017-03-01T08:07:16
#
#-------------------------------------------------

QT       -= gui

TARGET = stateMachine
TEMPLATE = lib
CONFIG += staticlib
QMAKE_CXXFLAGS += --std=c++14

SOURCES +=

INCLUDEPATH += ../../../lib/qImmobilePayLib/lib/sml/include

HEADERS += StateMachine.h \
    actions.hpp \
    events.hpp \
    guards.hpp
unix {
    target.path = /usr/lib
    INSTALLS += target
}

win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../UserDatabase/release/ -lUserDatabase
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../UserDatabase/debug/ -lUserDatabase
else:unix: LIBS += -L$$OUT_PWD/../UserDatabase/ -lUserDatabase

INCLUDEPATH += $$PWD/../UserDatabase
DEPENDPATH += $$PWD/../UserDatabase

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../UserDatabase/release/libUserDatabase.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../UserDatabase/debug/libUserDatabase.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../UserDatabase/release/UserDatabase.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../UserDatabase/debug/UserDatabase.lib
else:unix: PRE_TARGETDEPS += $$OUT_PWD/../UserDatabase/libUserDatabase.a
