LIBS += -lQtOpenCL

win32: CONFIG+= win
win64: CONFIG+= win

win{ #Windows specific commands
    OPENCL_ROOT="C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v5.5"
    OPENCL_LIBSPATH="$$OPENCL_ROOT/lib/Win32"
    OPENCL_LIB=OpenCL.lib
} else { #Linux specific commands
    OPENCL_ROOT="/usr/local/cuda-5.5/"
    OPENCL_LIBSPATH="/usr/lib"
    OPENCL_LIB="-lOpenCL"
    DEFINES += UNIX
}

OPENCL_INCLUDES="$$OPENCL_ROOT/include"
QMAKE_CXXFLAGS += "-I\"$$OPENCL_INCLUDES\""
INCLUDEPATH += "$$OPENCL_INCLUDES"
LIBPATH += "$$OPENCL_LIBSPATH"
LIBS += "-L$$OPENCL_LIBSPATH"
LIBS += "$$OPENCL_LIB"
DEFINES += USING_OPENCL


macx:!opencl_configure {
    LIBS += -framework OpenCL
} else {
win32 {
    !isEmpty(QMAKE_INCDIR_OPENCL) {
        QMAKE_CXXFLAGS += -I$$QMAKE_INCDIR_OPENCL
    }
    !isEmpty(QMAKE_LIBDIR_OPENCL) {
        LIBS += -L$$QMAKE_LIBDIR_OPENCL
    }
    !isEmpty(QMAKE_LIBS_OPENCL) {
        LIBS += $$QMAKE_LIBS_OPENCL
    } else {
        LIBS += -lOpenCL
    }
} else {

LIBS += -lOpenCL
}
}
