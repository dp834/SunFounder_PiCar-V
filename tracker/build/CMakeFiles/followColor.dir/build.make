# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.7

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/pi/Robot/tracker

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pi/Robot/tracker/build

# Include any dependencies generated for this target.
include CMakeFiles/followColor.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/followColor.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/followColor.dir/flags.make

CMakeFiles/followColor.dir/src/ColorTracker.cpp.o: CMakeFiles/followColor.dir/flags.make
CMakeFiles/followColor.dir/src/ColorTracker.cpp.o: ../src/ColorTracker.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Robot/tracker/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/followColor.dir/src/ColorTracker.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/followColor.dir/src/ColorTracker.cpp.o -c /home/pi/Robot/tracker/src/ColorTracker.cpp

CMakeFiles/followColor.dir/src/ColorTracker.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/followColor.dir/src/ColorTracker.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/Robot/tracker/src/ColorTracker.cpp > CMakeFiles/followColor.dir/src/ColorTracker.cpp.i

CMakeFiles/followColor.dir/src/ColorTracker.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/followColor.dir/src/ColorTracker.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/Robot/tracker/src/ColorTracker.cpp -o CMakeFiles/followColor.dir/src/ColorTracker.cpp.s

CMakeFiles/followColor.dir/src/ColorTracker.cpp.o.requires:

.PHONY : CMakeFiles/followColor.dir/src/ColorTracker.cpp.o.requires

CMakeFiles/followColor.dir/src/ColorTracker.cpp.o.provides: CMakeFiles/followColor.dir/src/ColorTracker.cpp.o.requires
	$(MAKE) -f CMakeFiles/followColor.dir/build.make CMakeFiles/followColor.dir/src/ColorTracker.cpp.o.provides.build
.PHONY : CMakeFiles/followColor.dir/src/ColorTracker.cpp.o.provides

CMakeFiles/followColor.dir/src/ColorTracker.cpp.o.provides.build: CMakeFiles/followColor.dir/src/ColorTracker.cpp.o


CMakeFiles/followColor.dir/src/Follow.cpp.o: CMakeFiles/followColor.dir/flags.make
CMakeFiles/followColor.dir/src/Follow.cpp.o: ../src/Follow.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Robot/tracker/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/followColor.dir/src/Follow.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/followColor.dir/src/Follow.cpp.o -c /home/pi/Robot/tracker/src/Follow.cpp

CMakeFiles/followColor.dir/src/Follow.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/followColor.dir/src/Follow.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/Robot/tracker/src/Follow.cpp > CMakeFiles/followColor.dir/src/Follow.cpp.i

CMakeFiles/followColor.dir/src/Follow.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/followColor.dir/src/Follow.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/Robot/tracker/src/Follow.cpp -o CMakeFiles/followColor.dir/src/Follow.cpp.s

CMakeFiles/followColor.dir/src/Follow.cpp.o.requires:

.PHONY : CMakeFiles/followColor.dir/src/Follow.cpp.o.requires

CMakeFiles/followColor.dir/src/Follow.cpp.o.provides: CMakeFiles/followColor.dir/src/Follow.cpp.o.requires
	$(MAKE) -f CMakeFiles/followColor.dir/build.make CMakeFiles/followColor.dir/src/Follow.cpp.o.provides.build
.PHONY : CMakeFiles/followColor.dir/src/Follow.cpp.o.provides

CMakeFiles/followColor.dir/src/Follow.cpp.o.provides.build: CMakeFiles/followColor.dir/src/Follow.cpp.o


CMakeFiles/followColor.dir/src/NetworkConnection.cpp.o: CMakeFiles/followColor.dir/flags.make
CMakeFiles/followColor.dir/src/NetworkConnection.cpp.o: ../src/NetworkConnection.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Robot/tracker/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/followColor.dir/src/NetworkConnection.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/followColor.dir/src/NetworkConnection.cpp.o -c /home/pi/Robot/tracker/src/NetworkConnection.cpp

CMakeFiles/followColor.dir/src/NetworkConnection.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/followColor.dir/src/NetworkConnection.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/Robot/tracker/src/NetworkConnection.cpp > CMakeFiles/followColor.dir/src/NetworkConnection.cpp.i

CMakeFiles/followColor.dir/src/NetworkConnection.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/followColor.dir/src/NetworkConnection.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/Robot/tracker/src/NetworkConnection.cpp -o CMakeFiles/followColor.dir/src/NetworkConnection.cpp.s

CMakeFiles/followColor.dir/src/NetworkConnection.cpp.o.requires:

.PHONY : CMakeFiles/followColor.dir/src/NetworkConnection.cpp.o.requires

CMakeFiles/followColor.dir/src/NetworkConnection.cpp.o.provides: CMakeFiles/followColor.dir/src/NetworkConnection.cpp.o.requires
	$(MAKE) -f CMakeFiles/followColor.dir/build.make CMakeFiles/followColor.dir/src/NetworkConnection.cpp.o.provides.build
.PHONY : CMakeFiles/followColor.dir/src/NetworkConnection.cpp.o.provides

CMakeFiles/followColor.dir/src/NetworkConnection.cpp.o.provides.build: CMakeFiles/followColor.dir/src/NetworkConnection.cpp.o


CMakeFiles/followColor.dir/src/PID.cpp.o: CMakeFiles/followColor.dir/flags.make
CMakeFiles/followColor.dir/src/PID.cpp.o: ../src/PID.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Robot/tracker/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/followColor.dir/src/PID.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/followColor.dir/src/PID.cpp.o -c /home/pi/Robot/tracker/src/PID.cpp

CMakeFiles/followColor.dir/src/PID.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/followColor.dir/src/PID.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/Robot/tracker/src/PID.cpp > CMakeFiles/followColor.dir/src/PID.cpp.i

CMakeFiles/followColor.dir/src/PID.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/followColor.dir/src/PID.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/Robot/tracker/src/PID.cpp -o CMakeFiles/followColor.dir/src/PID.cpp.s

CMakeFiles/followColor.dir/src/PID.cpp.o.requires:

.PHONY : CMakeFiles/followColor.dir/src/PID.cpp.o.requires

CMakeFiles/followColor.dir/src/PID.cpp.o.provides: CMakeFiles/followColor.dir/src/PID.cpp.o.requires
	$(MAKE) -f CMakeFiles/followColor.dir/build.make CMakeFiles/followColor.dir/src/PID.cpp.o.provides.build
.PHONY : CMakeFiles/followColor.dir/src/PID.cpp.o.provides

CMakeFiles/followColor.dir/src/PID.cpp.o.provides.build: CMakeFiles/followColor.dir/src/PID.cpp.o


# Object files for target followColor
followColor_OBJECTS = \
"CMakeFiles/followColor.dir/src/ColorTracker.cpp.o" \
"CMakeFiles/followColor.dir/src/Follow.cpp.o" \
"CMakeFiles/followColor.dir/src/NetworkConnection.cpp.o" \
"CMakeFiles/followColor.dir/src/PID.cpp.o"

# External object files for target followColor
followColor_EXTERNAL_OBJECTS =

followColor: CMakeFiles/followColor.dir/src/ColorTracker.cpp.o
followColor: CMakeFiles/followColor.dir/src/Follow.cpp.o
followColor: CMakeFiles/followColor.dir/src/NetworkConnection.cpp.o
followColor: CMakeFiles/followColor.dir/src/PID.cpp.o
followColor: CMakeFiles/followColor.dir/build.make
followColor: /usr/local/lib/libopencv_dnn.so.3.4.3
followColor: /usr/local/lib/libopencv_ml.so.3.4.3
followColor: /usr/local/lib/libopencv_objdetect.so.3.4.3
followColor: /usr/local/lib/libopencv_shape.so.3.4.3
followColor: /usr/local/lib/libopencv_stitching.so.3.4.3
followColor: /usr/local/lib/libopencv_superres.so.3.4.3
followColor: /usr/local/lib/libopencv_videostab.so.3.4.3
followColor: /usr/local/lib/libopencv_calib3d.so.3.4.3
followColor: /usr/local/lib/libopencv_features2d.so.3.4.3
followColor: /usr/local/lib/libopencv_flann.so.3.4.3
followColor: /usr/local/lib/libopencv_highgui.so.3.4.3
followColor: /usr/local/lib/libopencv_photo.so.3.4.3
followColor: /usr/local/lib/libopencv_video.so.3.4.3
followColor: /usr/local/lib/libopencv_videoio.so.3.4.3
followColor: /usr/local/lib/libopencv_imgcodecs.so.3.4.3
followColor: /usr/local/lib/libopencv_imgproc.so.3.4.3
followColor: /usr/local/lib/libopencv_core.so.3.4.3
followColor: CMakeFiles/followColor.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/Robot/tracker/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable followColor"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/followColor.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/followColor.dir/build: followColor

.PHONY : CMakeFiles/followColor.dir/build

CMakeFiles/followColor.dir/requires: CMakeFiles/followColor.dir/src/ColorTracker.cpp.o.requires
CMakeFiles/followColor.dir/requires: CMakeFiles/followColor.dir/src/Follow.cpp.o.requires
CMakeFiles/followColor.dir/requires: CMakeFiles/followColor.dir/src/NetworkConnection.cpp.o.requires
CMakeFiles/followColor.dir/requires: CMakeFiles/followColor.dir/src/PID.cpp.o.requires

.PHONY : CMakeFiles/followColor.dir/requires

CMakeFiles/followColor.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/followColor.dir/cmake_clean.cmake
.PHONY : CMakeFiles/followColor.dir/clean

CMakeFiles/followColor.dir/depend:
	cd /home/pi/Robot/tracker/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/Robot/tracker /home/pi/Robot/tracker /home/pi/Robot/tracker/build /home/pi/Robot/tracker/build /home/pi/Robot/tracker/build/CMakeFiles/followColor.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/followColor.dir/depend

