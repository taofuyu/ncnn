# set cross-compiled system type, it's better not use the type which cmake cannot recognized.
# compile for host: cmake ..
# compile for rm: use this toolchain
# "ccmake -DCMAKE_TOOLCHAIN_FILE=../toolchains/himix100_xl.toolchain.cmake .." to vis. c&q
SET ( CMAKE_SYSTEM_NAME Linux )
SET ( CMAKE_SYSTEM_PROCESSOR arm )
# when hislicon SDK was installed, toolchain was installed in the path as below: 
SET ( CMAKE_C_COMPILER /opt/hisi-linux/x86-arm/arm-himix100-linux/bin/arm-himix100-linux-gcc )
SET ( CMAKE_CXX_COMPILER /opt/hisi-linux/x86-arm/arm-himix100-linux/bin/arm-himix100-linux-g++ )

# set searching rules for cross-compiler
SET ( CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER )
SET ( CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY )
SET ( CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY )

# set ${CMAKE_C_FLAGS} and ${CMAKE_CXX_FLAGS}flag for cross-compiled process
SET ( CROSS_COMPILATION_ARM himix100 )
SET ( CROSS_COMPILATION_ARCHITECTURE armv7-a )

# set g++ param
SET ( CMAKE_CXX_FLAGS "-mcpu=cortex-a7 -mtune=cortex-a7  -mfloat-abi=softfp -mfpu=neon-vfpv4 ${CMAKE_CXX_FLAGS}" )

add_definitions(-D__ARM_NEON)
