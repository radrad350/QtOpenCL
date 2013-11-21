######################################################################
# Automatically generated by qmake (2.01a) Sat Feb 13 10:16:42 2010
######################################################################

TEMPLATE = app
TARGET = mandelbrot
DEPENDPATH += .
INCLUDEPATH += .
QT += widgets
# Input
SOURCES += main.cpp \
           palette.cpp \
           framerate.cpp \
           image.cpp \
           imagecl.cpp \
           imagenative.cpp \
           view.cpp \
           viewgl.cpp \
           cltexture2d.cpp \
           zoom.cpp
HEADERS += palette.h \
           framerate.h \
           image.h \
           imagecl.h \
           imagenative.h \
           view.h \
           viewgl.h \
           cltexture2d.h \
           glproxy.h \
           zoom.h
RESOURCES += mandelbrot.qrc

LIBS += -L../../lib -L../../bin
include(../../src/openclgl/openclgl_dep.pri)