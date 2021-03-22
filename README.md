# Qt-OpenGL-Fonts-with-Freetype-Library

Details about the Project:
Its a Qt/OpenGL project for Font rendering running at 60FPS. It uses QOpenGLWidget and QOpenGLFunctions for rendering Text information including Unicode Characters.
It is dependednt on Freetype OpenSource library for creating fonts. Project comes with pre-built 64bit machine static libraries, freetype.lib(For Windows) and libfreetype.a(For Linux)

Build instructions:
1) Open the .pro file and compile it for 64bit machine configuration. Ex- Desktop Qt %{Qt:Version} MSVC2015 64bit for Windows.
2) Run QMake
3) Compile and Build
4) Once the pro succesfully compiled place the ReadboldV2000.ttf in the build directory. 

Class Structure:
1) main() in main.cpp
2) mainwidget class which inherits from QOpenGLWidget and QOpenGLFunctions
3) FontProvider Helper class which provides Font realted service which inherits QThread

Implementation Details
1) OpenGL - Works on both Desktop and Embedded devices(Switch PC_SETTINGS,BOARD_SETTINGS defines based on need in fontprovider.h) 
			Shaders are implemented.
			Rendering happens in painGL() in mainwidget.cpp
			Additionally implemented Flip view of the contents being rendered(Switch NO_FLIP_VIEW,FLIP_VIEW defines based on need in mainwidget.h)
			
2) Qt - Used Qt 5.9.8 for developement. Should work on Qt versions > 5.0
		To make unicode Font loading faster threading approach is used. The OpenGL context is shared between main thread and Worker thread.
		All the fonts are loaded in background, So the application runs up immidiately without lag.
		

Usage policy
Opensource code. No restrictions. Anyone can copy and use based on their need.

Happy coding!
