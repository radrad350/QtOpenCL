TEMPLATE = app
TARGET = colorize
DEPENDPATH += .
INCLUDEPATH += .
QT += widgets
# Input
SOURCES += main.cpp \
           colorizewidget.cpp
HEADERS += colorizewidget.h
RESOURCES += colorize.qrc

LIBS += -L../../../lib -L../../../bin
include(../../../src/opencl/opencl_dep.pri)
