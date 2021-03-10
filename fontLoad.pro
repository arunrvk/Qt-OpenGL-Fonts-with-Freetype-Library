#-------------------------------------------------
#
# Project created by QtCreator 2018-12-08T12:22:11
#
#-------------------------------------------------

QT       += core gui xml opengl
QT       += multimedia multimediawidgets widgets
QT       += concurrent

TARGET = fontLoad
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.

DEFINES += QT_DEPRECATED_WARNINGS
DEFINES += M64
CONFIG += c++11


#DEFINES += DEBUG

DEFINES += RELEASE

SOURCES += \
        main.cpp \
    mainwidget.cpp \
    fontprovider.cpp

HEADERS += \
    mainwidget.h \
    fontprovider.h

RESOURCES += \
    shaders.qrc

win32: LIBS += -L$$PWD/freetype/ -lfreetype

INCLUDEPATH += $$PWD/freetype/include
DEPENDPATH += $$PWD/freetype/include

win32:!win32-g++: PRE_TARGETDEPS += $$PWD/freetype/freetype.lib
else:win32-g++: PRE_TARGETDEPS += $$PWD/freetype/libfreetype.a
