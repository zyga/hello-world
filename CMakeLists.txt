cmake_minimum_required(VERSION 2.6)

# Define the HelloWorld project
project(HelloWorld)

# Set the version number
set(HelloWorld_VERSION_MAJOR 1)
set(HelloWorld_VERSION_MINOR 0)
set(HelloWorld_VERSION_PATCH 0)

# Add the HelloWorld executable, built from hello.c
add_executable(HelloWorld hello.c)

# Install HelloWorld to bin, relative to prefix
install(TARGETS HelloWorld DESTINATION bin)

# CPack installer package stuff
include(InstallRequiredSystemLibraries)

# Include the license
set(CPACK_RESOURCE_FILE_LICENSE
    "${CMAKE_CURRENT_SOURCE_DIR}/COPYING")

# Set package version
set (CPACK_PACKAGE_VERSION_MAJOR "${HelloWorld_VERSION_MAJOR}")
set (CPACK_PACKAGE_VERSION_MINOR "${HelloWorld_VERSION_MINOR}")
set (CPACK_PACKAGE_VERSION_PATCH "${HelloWorld_VERSION_PATCH}")

# Set package contact (used by Linux packages)
set (CPACK_PACKAGE_CONTACT "Zygmunt Krynicki <zkrynicki@gmail.com>")

# Set package vendor (used by Windows installer)
set (CPACK_PACKAGE_VENDOR "Zygmunt Krynicki")

include (CPack)
