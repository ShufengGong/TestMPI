# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_COMMAND = /home/gongsf/app/clion-2020.1.2/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/gongsf/app/clion-2020.1.2/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/gongsf/CLionProjects/TestMPI

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/gongsf/CLionProjects/TestMPI

# Include any dependencies generated for this target.
include CMakeFiles/app.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/app.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/app.dir/flags.make

CMakeFiles/app.dir/app.cc.o: CMakeFiles/app.dir/flags.make
CMakeFiles/app.dir/app.cc.o: app.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gongsf/CLionProjects/TestMPI/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/app.dir/app.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/app.dir/app.cc.o -c /home/gongsf/CLionProjects/TestMPI/app.cc

CMakeFiles/app.dir/app.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/app.dir/app.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gongsf/CLionProjects/TestMPI/app.cc > CMakeFiles/app.dir/app.cc.i

CMakeFiles/app.dir/app.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/app.dir/app.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gongsf/CLionProjects/TestMPI/app.cc -o CMakeFiles/app.dir/app.cc.s

# Object files for target app
app_OBJECTS = \
"CMakeFiles/app.dir/app.cc.o"

# External object files for target app
app_EXTERNAL_OBJECTS =

libapp.a: CMakeFiles/app.dir/app.cc.o
libapp.a: CMakeFiles/app.dir/build.make
libapp.a: CMakeFiles/app.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/gongsf/CLionProjects/TestMPI/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libapp.a"
	$(CMAKE_COMMAND) -P CMakeFiles/app.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/app.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/app.dir/build: libapp.a

.PHONY : CMakeFiles/app.dir/build

CMakeFiles/app.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/app.dir/cmake_clean.cmake
.PHONY : CMakeFiles/app.dir/clean

CMakeFiles/app.dir/depend:
	cd /home/gongsf/CLionProjects/TestMPI && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/gongsf/CLionProjects/TestMPI /home/gongsf/CLionProjects/TestMPI /home/gongsf/CLionProjects/TestMPI /home/gongsf/CLionProjects/TestMPI /home/gongsf/CLionProjects/TestMPI/CMakeFiles/app.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/app.dir/depend

