TEMPLATE = app
TARGET = bezierpatch
DEPENDPATH += .
INCLUDEPATH += .
QT += opengl widgets

VPATH += ../mandelbrot
INCLUDEPATH += ../mandelbrot

# Input
#SOURCES += main.cpp \
#           beziermainwindow.cpp \
#           bezierwidget.cpp \
#           qglcamera.cpp \
#           framerate.cpp \
#           view.cpp
#HEADERS += bezierwidget.h \
#           beziermainwindow.h \
#           qglcamera.h \
#           framerate.h \
#           view.h
RESOURCES += bezierpatch.qrc
FORMS += beziermainwindow.ui

LIBS += -L../../lib -L../../bin
include(../../src/openclgl/openclgl_dep.pri)
