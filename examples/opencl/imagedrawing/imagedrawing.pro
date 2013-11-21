TEMPLATE = app
TARGET = imagedrawing
DEPENDPATH += .
INCLUDEPATH += .
QT += widgets
# Input
SOURCES += main.cpp \
           imagewidget.cpp
HEADERS += imagewidget.h
RESOURCES += imagedrawing.qrc

LIBS += -L../../../lib -L../../../bin
include(../../../src/opencl/opencl_dep.pri)
