QT += core widgets sql

TARGET = sandic
TEMPLATE = app

SOURCES += main.cpp \
    mainwindow.cpp \
    card.cpp \
    config.cpp \
    mainwidget.cpp \
    sqlite/sqlite3.c \
    trans.cpp \
    orderdialog.cpp

HEADERS  += \
    mainwindow.h \
    card.h \
    config.h \
    mainwidget.h \
    sqlite/sqlite3.h \
    trans.h \
    orderdialog.h

FORMS += \
    mainwidget.ui \
    orderdialog.ui

RESOURCES += \
    sandic.qrc

RC_FILE = rc/sandic.rc

# CONFIG-=app_bundle