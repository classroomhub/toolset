# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/shyam/Programming/Projects/ClassroomHub/toolset/diff/source

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/shyam/Programming/Projects/ClassroomHub/toolset/diff/bin/debug

# Include any dependencies generated for this target.
include diff/CMakeFiles/diff.dir/depend.make

# Include the progress variables for this target.
include diff/CMakeFiles/diff.dir/progress.make

# Include the compile flags for this target's objects.
include diff/CMakeFiles/diff.dir/flags.make

diff/CMakeFiles/diff.dir/diff.cpp.o: diff/CMakeFiles/diff.dir/flags.make
diff/CMakeFiles/diff.dir/diff.cpp.o: /home/shyam/Programming/Projects/ClassroomHub/toolset/diff/source/diff/diff.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/shyam/Programming/Projects/ClassroomHub/toolset/diff/bin/debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object diff/CMakeFiles/diff.dir/diff.cpp.o"
	cd /home/shyam/Programming/Projects/ClassroomHub/toolset/diff/bin/debug/diff && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/diff.dir/diff.cpp.o -c /home/shyam/Programming/Projects/ClassroomHub/toolset/diff/source/diff/diff.cpp

diff/CMakeFiles/diff.dir/diff.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/diff.dir/diff.cpp.i"
	cd /home/shyam/Programming/Projects/ClassroomHub/toolset/diff/bin/debug/diff && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/shyam/Programming/Projects/ClassroomHub/toolset/diff/source/diff/diff.cpp > CMakeFiles/diff.dir/diff.cpp.i

diff/CMakeFiles/diff.dir/diff.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/diff.dir/diff.cpp.s"
	cd /home/shyam/Programming/Projects/ClassroomHub/toolset/diff/bin/debug/diff && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/shyam/Programming/Projects/ClassroomHub/toolset/diff/source/diff/diff.cpp -o CMakeFiles/diff.dir/diff.cpp.s

diff/CMakeFiles/diff.dir/diff.cpp.o.requires:

.PHONY : diff/CMakeFiles/diff.dir/diff.cpp.o.requires

diff/CMakeFiles/diff.dir/diff.cpp.o.provides: diff/CMakeFiles/diff.dir/diff.cpp.o.requires
	$(MAKE) -f diff/CMakeFiles/diff.dir/build.make diff/CMakeFiles/diff.dir/diff.cpp.o.provides.build
.PHONY : diff/CMakeFiles/diff.dir/diff.cpp.o.provides

diff/CMakeFiles/diff.dir/diff.cpp.o.provides.build: diff/CMakeFiles/diff.dir/diff.cpp.o


# Object files for target diff
diff_OBJECTS = \
"CMakeFiles/diff.dir/diff.cpp.o"

# External object files for target diff
diff_EXTERNAL_OBJECTS =

diff/libdiff.a: diff/CMakeFiles/diff.dir/diff.cpp.o
diff/libdiff.a: diff/CMakeFiles/diff.dir/build.make
diff/libdiff.a: diff/CMakeFiles/diff.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/shyam/Programming/Projects/ClassroomHub/toolset/diff/bin/debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libdiff.a"
	cd /home/shyam/Programming/Projects/ClassroomHub/toolset/diff/bin/debug/diff && $(CMAKE_COMMAND) -P CMakeFiles/diff.dir/cmake_clean_target.cmake
	cd /home/shyam/Programming/Projects/ClassroomHub/toolset/diff/bin/debug/diff && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/diff.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
diff/CMakeFiles/diff.dir/build: diff/libdiff.a

.PHONY : diff/CMakeFiles/diff.dir/build

diff/CMakeFiles/diff.dir/requires: diff/CMakeFiles/diff.dir/diff.cpp.o.requires

.PHONY : diff/CMakeFiles/diff.dir/requires

diff/CMakeFiles/diff.dir/clean:
	cd /home/shyam/Programming/Projects/ClassroomHub/toolset/diff/bin/debug/diff && $(CMAKE_COMMAND) -P CMakeFiles/diff.dir/cmake_clean.cmake
.PHONY : diff/CMakeFiles/diff.dir/clean

diff/CMakeFiles/diff.dir/depend:
	cd /home/shyam/Programming/Projects/ClassroomHub/toolset/diff/bin/debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/shyam/Programming/Projects/ClassroomHub/toolset/diff/source /home/shyam/Programming/Projects/ClassroomHub/toolset/diff/source/diff /home/shyam/Programming/Projects/ClassroomHub/toolset/diff/bin/debug /home/shyam/Programming/Projects/ClassroomHub/toolset/diff/bin/debug/diff /home/shyam/Programming/Projects/ClassroomHub/toolset/diff/bin/debug/diff/CMakeFiles/diff.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : diff/CMakeFiles/diff.dir/depend

