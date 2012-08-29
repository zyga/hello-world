Classic hello-world example
===========================

This is the classic, well-know hello world example. I've chose to publish my
own copy because I wanted to have a reliable way of building something simple
that I could reach from many places and, to a lesser degree, because I wanted
to experiment with CMake.

Building
========

CMake uses two-stage building where you initially generate the build system for
your platform (which you do only once per build tree). This works well on
Linux and Windows (using all kinds of build systems and compilers).

To generate build system files run the following commands:

	$ mkdir build
	$ cd build
	$ cmake ..

The last command just tells CMake where to look for the sources.

CMake will check for available compilers and will finally build a number of
files, depending on your system. Since all those different build systems have
incompatible ways to actually trigger the build CMake can help us do that
portably. While still inside the build directory, run the following command:

	$ cmake --build .

This is similar to our previous invocation but this time we must tell CMake
where the generated build system is.

Having done that you should have your executable available around, have fun!