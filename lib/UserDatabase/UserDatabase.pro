#-------------------------------------------------
#
# Project created by QtCreator 2017-03-01T08:34:05
#
#-------------------------------------------------

QT       += sql

QT       += gui

TARGET = UserDatabase
TEMPLATE = lib
CONFIG += staticlib
QMAKE_CXXFLAGS += --std=c++14

SOURCES += UserDatabase.cpp \
    Valuta.cpp \
    ItemDatabase.cpp

HEADERS += UserDatabase.h \
    Valuta.hpp \
    ItemDatabase.hpp
unix {
    target.path = /usr/lib
    INSTALLS += target
}
