# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/richard/Disaster

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/richard/Disaster/build

# Include any dependencies generated for this target.
include CMakeFiles/Disaster.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Disaster.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Disaster.dir/flags.make

CMakeFiles/Disaster.dir/main.cpp.o: CMakeFiles/Disaster.dir/flags.make
CMakeFiles/Disaster.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/richard/Disaster/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Disaster.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Disaster.dir/main.cpp.o -c /home/richard/Disaster/main.cpp

CMakeFiles/Disaster.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Disaster.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/richard/Disaster/main.cpp > CMakeFiles/Disaster.dir/main.cpp.i

CMakeFiles/Disaster.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Disaster.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/richard/Disaster/main.cpp -o CMakeFiles/Disaster.dir/main.cpp.s

# Object files for target Disaster
Disaster_OBJECTS = \
"CMakeFiles/Disaster.dir/main.cpp.o"

# External object files for target Disaster
Disaster_EXTERNAL_OBJECTS =

Disaster: CMakeFiles/Disaster.dir/main.cpp.o
Disaster: CMakeFiles/Disaster.dir/build.make
Disaster: CMakeFiles/Disaster.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/richard/Disaster/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Disaster"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Disaster.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Disaster.dir/build: Disaster

.PHONY : CMakeFiles/Disaster.dir/build

CMakeFiles/Disaster.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Disaster.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Disaster.dir/clean

CMakeFiles/Disaster.dir/depend:
	cd /home/richard/Disaster/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/richard/Disaster /home/richard/Disaster /home/richard/Disaster/build /home/richard/Disaster/build /home/richard/Disaster/build/CMakeFiles/Disaster.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Disaster.dir/depend

