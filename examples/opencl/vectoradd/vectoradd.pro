TEMPLATE = app
TARGET = vectoradd
CONFIG += qt debug warn_on
SOURCES = vectoradd.cpp
RESOURCES = vectoradd.qrc
LIBS += -L../../../lib -L../../../bin
QT += widgets
include(../../../src/opencl/opencl_dep.pri)
