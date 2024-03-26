set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR arm)

set(CMAKE_SYSROOT /home/lesam/x-tools/arm-etfbl-linux-gnueabihf/arm-etfbl-linux-gnueabihf/sysroot)
set(CMAKE_STAGING_PREFIX ./build)

set(tools /home/lesam/x-tools/arm-etfbl-linux-gnueabihf)
set(CMAKE_C_COMPILER ${tools}/bin/arm-linux-gcc)

set(CMAKE_PREFIX_PATH ${CMAKE_SYSROOT}/usr/lib)

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)

