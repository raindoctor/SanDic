QT += core widgets sql

TARGET = sandic
TEMPLATE = app

SOURCES += main.cpp \
    #../../../Tools/Qt/5.12.6/Src/qtbase/src/3rdparty/sqlite/sqlite3.c \
    mainwindow.cpp \
    card.cpp \
    config.cpp \
    mainwidget.cpp \
    trans.cpp \
    orderdialog.cpp

HEADERS  += \
    #../../../Tools/Qt/5.12.6/Src/qtbase/src/3rdparty/sqlite/sqlite3.h \
    mainwindow.h \
    card.h \
    config.h \
    mainwidget.h \
    trans.h \
    orderdialog.h

FORMS += \
    mainwidget.ui \
    orderdialog.ui

RESOURCES += \
    sandic.qrc

RC_FILE = rc/sandic.rc

# Для Мака, на данный момент не нужно
# CONFIG -= app_bundle

CONFIG += c++11

DEFINES += QT_DEPRECATED_WARNINGS

