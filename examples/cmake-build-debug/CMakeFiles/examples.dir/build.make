# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /snap/clion/129/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /snap/clion/129/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/examples.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/examples.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/examples.dir/flags.make

CMakeFiles/examples.dir/char_test.cpp.o: CMakeFiles/examples.dir/flags.make
CMakeFiles/examples.dir/char_test.cpp.o: ../char_test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/examples.dir/char_test.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/examples.dir/char_test.cpp.o -c /media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/char_test.cpp

CMakeFiles/examples.dir/char_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/examples.dir/char_test.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/char_test.cpp > CMakeFiles/examples.dir/char_test.cpp.i

CMakeFiles/examples.dir/char_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/examples.dir/char_test.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/char_test.cpp -o CMakeFiles/examples.dir/char_test.cpp.s

CMakeFiles/examples.dir/fasterrcnn.cpp.o: CMakeFiles/examples.dir/flags.make
CMakeFiles/examples.dir/fasterrcnn.cpp.o: ../fasterrcnn.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/examples.dir/fasterrcnn.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/examples.dir/fasterrcnn.cpp.o -c /media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/fasterrcnn.cpp

CMakeFiles/examples.dir/fasterrcnn.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/examples.dir/fasterrcnn.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/fasterrcnn.cpp > CMakeFiles/examples.dir/fasterrcnn.cpp.i

CMakeFiles/examples.dir/fasterrcnn.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/examples.dir/fasterrcnn.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/fasterrcnn.cpp -o CMakeFiles/examples.dir/fasterrcnn.cpp.s

CMakeFiles/examples.dir/mobilenetssd.cpp.o: CMakeFiles/examples.dir/flags.make
CMakeFiles/examples.dir/mobilenetssd.cpp.o: ../mobilenetssd.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/examples.dir/mobilenetssd.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/examples.dir/mobilenetssd.cpp.o -c /media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/mobilenetssd.cpp

CMakeFiles/examples.dir/mobilenetssd.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/examples.dir/mobilenetssd.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/mobilenetssd.cpp > CMakeFiles/examples.dir/mobilenetssd.cpp.i

CMakeFiles/examples.dir/mobilenetssd.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/examples.dir/mobilenetssd.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/mobilenetssd.cpp -o CMakeFiles/examples.dir/mobilenetssd.cpp.s

CMakeFiles/examples.dir/mobilenetv2ssdlite.cpp.o: CMakeFiles/examples.dir/flags.make
CMakeFiles/examples.dir/mobilenetv2ssdlite.cpp.o: ../mobilenetv2ssdlite.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/examples.dir/mobilenetv2ssdlite.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/examples.dir/mobilenetv2ssdlite.cpp.o -c /media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/mobilenetv2ssdlite.cpp

CMakeFiles/examples.dir/mobilenetv2ssdlite.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/examples.dir/mobilenetv2ssdlite.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/mobilenetv2ssdlite.cpp > CMakeFiles/examples.dir/mobilenetv2ssdlite.cpp.i

CMakeFiles/examples.dir/mobilenetv2ssdlite.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/examples.dir/mobilenetv2ssdlite.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/mobilenetv2ssdlite.cpp -o CMakeFiles/examples.dir/mobilenetv2ssdlite.cpp.s

CMakeFiles/examples.dir/mobilenetv3ssdlite.cpp.o: CMakeFiles/examples.dir/flags.make
CMakeFiles/examples.dir/mobilenetv3ssdlite.cpp.o: ../mobilenetv3ssdlite.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/examples.dir/mobilenetv3ssdlite.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/examples.dir/mobilenetv3ssdlite.cpp.o -c /media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/mobilenetv3ssdlite.cpp

CMakeFiles/examples.dir/mobilenetv3ssdlite.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/examples.dir/mobilenetv3ssdlite.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/mobilenetv3ssdlite.cpp > CMakeFiles/examples.dir/mobilenetv3ssdlite.cpp.i

CMakeFiles/examples.dir/mobilenetv3ssdlite.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/examples.dir/mobilenetv3ssdlite.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/mobilenetv3ssdlite.cpp -o CMakeFiles/examples.dir/mobilenetv3ssdlite.cpp.s

CMakeFiles/examples.dir/peleenetssd_seg.cpp.o: CMakeFiles/examples.dir/flags.make
CMakeFiles/examples.dir/peleenetssd_seg.cpp.o: ../peleenetssd_seg.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/examples.dir/peleenetssd_seg.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/examples.dir/peleenetssd_seg.cpp.o -c /media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/peleenetssd_seg.cpp

CMakeFiles/examples.dir/peleenetssd_seg.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/examples.dir/peleenetssd_seg.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/peleenetssd_seg.cpp > CMakeFiles/examples.dir/peleenetssd_seg.cpp.i

CMakeFiles/examples.dir/peleenetssd_seg.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/examples.dir/peleenetssd_seg.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/peleenetssd_seg.cpp -o CMakeFiles/examples.dir/peleenetssd_seg.cpp.s

CMakeFiles/examples.dir/retinaface.cpp.o: CMakeFiles/examples.dir/flags.make
CMakeFiles/examples.dir/retinaface.cpp.o: ../retinaface.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/examples.dir/retinaface.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/examples.dir/retinaface.cpp.o -c /media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/retinaface.cpp

CMakeFiles/examples.dir/retinaface.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/examples.dir/retinaface.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/retinaface.cpp > CMakeFiles/examples.dir/retinaface.cpp.i

CMakeFiles/examples.dir/retinaface.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/examples.dir/retinaface.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/retinaface.cpp -o CMakeFiles/examples.dir/retinaface.cpp.s

CMakeFiles/examples.dir/rfcn.cpp.o: CMakeFiles/examples.dir/flags.make
CMakeFiles/examples.dir/rfcn.cpp.o: ../rfcn.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/examples.dir/rfcn.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/examples.dir/rfcn.cpp.o -c /media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/rfcn.cpp

CMakeFiles/examples.dir/rfcn.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/examples.dir/rfcn.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/rfcn.cpp > CMakeFiles/examples.dir/rfcn.cpp.i

CMakeFiles/examples.dir/rfcn.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/examples.dir/rfcn.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/rfcn.cpp -o CMakeFiles/examples.dir/rfcn.cpp.s

CMakeFiles/examples.dir/shufflenetv2.cpp.o: CMakeFiles/examples.dir/flags.make
CMakeFiles/examples.dir/shufflenetv2.cpp.o: ../shufflenetv2.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/examples.dir/shufflenetv2.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/examples.dir/shufflenetv2.cpp.o -c /media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/shufflenetv2.cpp

CMakeFiles/examples.dir/shufflenetv2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/examples.dir/shufflenetv2.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/shufflenetv2.cpp > CMakeFiles/examples.dir/shufflenetv2.cpp.i

CMakeFiles/examples.dir/shufflenetv2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/examples.dir/shufflenetv2.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/shufflenetv2.cpp -o CMakeFiles/examples.dir/shufflenetv2.cpp.s

CMakeFiles/examples.dir/simplepose.cpp.o: CMakeFiles/examples.dir/flags.make
CMakeFiles/examples.dir/simplepose.cpp.o: ../simplepose.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/examples.dir/simplepose.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/examples.dir/simplepose.cpp.o -c /media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/simplepose.cpp

CMakeFiles/examples.dir/simplepose.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/examples.dir/simplepose.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/simplepose.cpp > CMakeFiles/examples.dir/simplepose.cpp.i

CMakeFiles/examples.dir/simplepose.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/examples.dir/simplepose.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/simplepose.cpp -o CMakeFiles/examples.dir/simplepose.cpp.s

CMakeFiles/examples.dir/squeezenet.cpp.o: CMakeFiles/examples.dir/flags.make
CMakeFiles/examples.dir/squeezenet.cpp.o: ../squeezenet.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/examples.dir/squeezenet.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/examples.dir/squeezenet.cpp.o -c /media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/squeezenet.cpp

CMakeFiles/examples.dir/squeezenet.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/examples.dir/squeezenet.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/squeezenet.cpp > CMakeFiles/examples.dir/squeezenet.cpp.i

CMakeFiles/examples.dir/squeezenet.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/examples.dir/squeezenet.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/squeezenet.cpp -o CMakeFiles/examples.dir/squeezenet.cpp.s

CMakeFiles/examples.dir/squeezenet_c_api.cpp.o: CMakeFiles/examples.dir/flags.make
CMakeFiles/examples.dir/squeezenet_c_api.cpp.o: ../squeezenet_c_api.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/examples.dir/squeezenet_c_api.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/examples.dir/squeezenet_c_api.cpp.o -c /media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/squeezenet_c_api.cpp

CMakeFiles/examples.dir/squeezenet_c_api.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/examples.dir/squeezenet_c_api.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/squeezenet_c_api.cpp > CMakeFiles/examples.dir/squeezenet_c_api.cpp.i

CMakeFiles/examples.dir/squeezenet_c_api.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/examples.dir/squeezenet_c_api.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/squeezenet_c_api.cpp -o CMakeFiles/examples.dir/squeezenet_c_api.cpp.s

CMakeFiles/examples.dir/squeezenetssd.cpp.o: CMakeFiles/examples.dir/flags.make
CMakeFiles/examples.dir/squeezenetssd.cpp.o: ../squeezenetssd.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/examples.dir/squeezenetssd.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/examples.dir/squeezenetssd.cpp.o -c /media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/squeezenetssd.cpp

CMakeFiles/examples.dir/squeezenetssd.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/examples.dir/squeezenetssd.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/squeezenetssd.cpp > CMakeFiles/examples.dir/squeezenetssd.cpp.i

CMakeFiles/examples.dir/squeezenetssd.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/examples.dir/squeezenetssd.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/squeezenetssd.cpp -o CMakeFiles/examples.dir/squeezenetssd.cpp.s

CMakeFiles/examples.dir/test_forward.cpp.o: CMakeFiles/examples.dir/flags.make
CMakeFiles/examples.dir/test_forward.cpp.o: ../test_forward.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object CMakeFiles/examples.dir/test_forward.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/examples.dir/test_forward.cpp.o -c /media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/test_forward.cpp

CMakeFiles/examples.dir/test_forward.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/examples.dir/test_forward.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/test_forward.cpp > CMakeFiles/examples.dir/test_forward.cpp.i

CMakeFiles/examples.dir/test_forward.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/examples.dir/test_forward.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/test_forward.cpp -o CMakeFiles/examples.dir/test_forward.cpp.s

CMakeFiles/examples.dir/yolact.cpp.o: CMakeFiles/examples.dir/flags.make
CMakeFiles/examples.dir/yolact.cpp.o: ../yolact.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building CXX object CMakeFiles/examples.dir/yolact.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/examples.dir/yolact.cpp.o -c /media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/yolact.cpp

CMakeFiles/examples.dir/yolact.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/examples.dir/yolact.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/yolact.cpp > CMakeFiles/examples.dir/yolact.cpp.i

CMakeFiles/examples.dir/yolact.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/examples.dir/yolact.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/yolact.cpp -o CMakeFiles/examples.dir/yolact.cpp.s

CMakeFiles/examples.dir/yolov2.cpp.o: CMakeFiles/examples.dir/flags.make
CMakeFiles/examples.dir/yolov2.cpp.o: ../yolov2.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building CXX object CMakeFiles/examples.dir/yolov2.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/examples.dir/yolov2.cpp.o -c /media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/yolov2.cpp

CMakeFiles/examples.dir/yolov2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/examples.dir/yolov2.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/yolov2.cpp > CMakeFiles/examples.dir/yolov2.cpp.i

CMakeFiles/examples.dir/yolov2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/examples.dir/yolov2.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/yolov2.cpp -o CMakeFiles/examples.dir/yolov2.cpp.s

CMakeFiles/examples.dir/yolov3.cpp.o: CMakeFiles/examples.dir/flags.make
CMakeFiles/examples.dir/yolov3.cpp.o: ../yolov3.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Building CXX object CMakeFiles/examples.dir/yolov3.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/examples.dir/yolov3.cpp.o -c /media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/yolov3.cpp

CMakeFiles/examples.dir/yolov3.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/examples.dir/yolov3.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/yolov3.cpp > CMakeFiles/examples.dir/yolov3.cpp.i

CMakeFiles/examples.dir/yolov3.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/examples.dir/yolov3.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/yolov3.cpp -o CMakeFiles/examples.dir/yolov3.cpp.s

CMakeFiles/examples.dir/yolov4.cpp.o: CMakeFiles/examples.dir/flags.make
CMakeFiles/examples.dir/yolov4.cpp.o: ../yolov4.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_18) "Building CXX object CMakeFiles/examples.dir/yolov4.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/examples.dir/yolov4.cpp.o -c /media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/yolov4.cpp

CMakeFiles/examples.dir/yolov4.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/examples.dir/yolov4.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/yolov4.cpp > CMakeFiles/examples.dir/yolov4.cpp.i

CMakeFiles/examples.dir/yolov4.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/examples.dir/yolov4.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/yolov4.cpp -o CMakeFiles/examples.dir/yolov4.cpp.s

# Object files for target examples
examples_OBJECTS = \
"CMakeFiles/examples.dir/char_test.cpp.o" \
"CMakeFiles/examples.dir/fasterrcnn.cpp.o" \
"CMakeFiles/examples.dir/mobilenetssd.cpp.o" \
"CMakeFiles/examples.dir/mobilenetv2ssdlite.cpp.o" \
"CMakeFiles/examples.dir/mobilenetv3ssdlite.cpp.o" \
"CMakeFiles/examples.dir/peleenetssd_seg.cpp.o" \
"CMakeFiles/examples.dir/retinaface.cpp.o" \
"CMakeFiles/examples.dir/rfcn.cpp.o" \
"CMakeFiles/examples.dir/shufflenetv2.cpp.o" \
"CMakeFiles/examples.dir/simplepose.cpp.o" \
"CMakeFiles/examples.dir/squeezenet.cpp.o" \
"CMakeFiles/examples.dir/squeezenet_c_api.cpp.o" \
"CMakeFiles/examples.dir/squeezenetssd.cpp.o" \
"CMakeFiles/examples.dir/test_forward.cpp.o" \
"CMakeFiles/examples.dir/yolact.cpp.o" \
"CMakeFiles/examples.dir/yolov2.cpp.o" \
"CMakeFiles/examples.dir/yolov3.cpp.o" \
"CMakeFiles/examples.dir/yolov4.cpp.o"

# External object files for target examples
examples_EXTERNAL_OBJECTS =

examples: CMakeFiles/examples.dir/char_test.cpp.o
examples: CMakeFiles/examples.dir/fasterrcnn.cpp.o
examples: CMakeFiles/examples.dir/mobilenetssd.cpp.o
examples: CMakeFiles/examples.dir/mobilenetv2ssdlite.cpp.o
examples: CMakeFiles/examples.dir/mobilenetv3ssdlite.cpp.o
examples: CMakeFiles/examples.dir/peleenetssd_seg.cpp.o
examples: CMakeFiles/examples.dir/retinaface.cpp.o
examples: CMakeFiles/examples.dir/rfcn.cpp.o
examples: CMakeFiles/examples.dir/shufflenetv2.cpp.o
examples: CMakeFiles/examples.dir/simplepose.cpp.o
examples: CMakeFiles/examples.dir/squeezenet.cpp.o
examples: CMakeFiles/examples.dir/squeezenet_c_api.cpp.o
examples: CMakeFiles/examples.dir/squeezenetssd.cpp.o
examples: CMakeFiles/examples.dir/test_forward.cpp.o
examples: CMakeFiles/examples.dir/yolact.cpp.o
examples: CMakeFiles/examples.dir/yolov2.cpp.o
examples: CMakeFiles/examples.dir/yolov3.cpp.o
examples: CMakeFiles/examples.dir/yolov4.cpp.o
examples: CMakeFiles/examples.dir/build.make
examples: CMakeFiles/examples.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_19) "Linking CXX executable examples"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/examples.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/examples.dir/build: examples

.PHONY : CMakeFiles/examples.dir/build

CMakeFiles/examples.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/examples.dir/cmake_clean.cmake
.PHONY : CMakeFiles/examples.dir/clean

CMakeFiles/examples.dir/depend:
	cd /media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples /media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples /media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/cmake-build-debug /media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/cmake-build-debug /media/t/64006e9c-fffc-427f-b780-00c20066dffa/ncnn/examples/cmake-build-debug/CMakeFiles/examples.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/examples.dir/depend

