# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.29

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

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.29.0/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.29.0/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/nguyenkiet/Documents/C++/request

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/nguyenkiet/Documents/C++/request/build

# Include any dependencies generated for this target.
include src/CMakeFiles/reqrep.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/CMakeFiles/reqrep.dir/compiler_depend.make

# Include the progress variables for this target.
include src/CMakeFiles/reqrep.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/reqrep.dir/flags.make

src/CMakeFiles/reqrep.dir/reqrep.cpp.o: src/CMakeFiles/reqrep.dir/flags.make
src/CMakeFiles/reqrep.dir/reqrep.cpp.o: /Users/nguyenkiet/Documents/C++/request/src/reqrep.cpp
src/CMakeFiles/reqrep.dir/reqrep.cpp.o: src/CMakeFiles/reqrep.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/nguyenkiet/Documents/C++/request/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/reqrep.dir/reqrep.cpp.o"
	cd /Users/nguyenkiet/Documents/C++/request/build/src && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/reqrep.dir/reqrep.cpp.o -MF CMakeFiles/reqrep.dir/reqrep.cpp.o.d -o CMakeFiles/reqrep.dir/reqrep.cpp.o -c /Users/nguyenkiet/Documents/C++/request/src/reqrep.cpp

src/CMakeFiles/reqrep.dir/reqrep.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/reqrep.dir/reqrep.cpp.i"
	cd /Users/nguyenkiet/Documents/C++/request/build/src && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/nguyenkiet/Documents/C++/request/src/reqrep.cpp > CMakeFiles/reqrep.dir/reqrep.cpp.i

src/CMakeFiles/reqrep.dir/reqrep.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/reqrep.dir/reqrep.cpp.s"
	cd /Users/nguyenkiet/Documents/C++/request/build/src && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/nguyenkiet/Documents/C++/request/src/reqrep.cpp -o CMakeFiles/reqrep.dir/reqrep.cpp.s

# Object files for target reqrep
reqrep_OBJECTS = \
"CMakeFiles/reqrep.dir/reqrep.cpp.o"

# External object files for target reqrep
reqrep_EXTERNAL_OBJECTS =

src/reqrep: src/CMakeFiles/reqrep.dir/reqrep.cpp.o
src/reqrep: src/CMakeFiles/reqrep.dir/build.make
src/reqrep: /usr/local/lib/libnng.a
src/reqrep: src/CMakeFiles/reqrep.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/nguyenkiet/Documents/C++/request/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable reqrep"
	cd /Users/nguyenkiet/Documents/C++/request/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/reqrep.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/reqrep.dir/build: src/reqrep
.PHONY : src/CMakeFiles/reqrep.dir/build

src/CMakeFiles/reqrep.dir/clean:
	cd /Users/nguyenkiet/Documents/C++/request/build/src && $(CMAKE_COMMAND) -P CMakeFiles/reqrep.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/reqrep.dir/clean

src/CMakeFiles/reqrep.dir/depend:
	cd /Users/nguyenkiet/Documents/C++/request/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/nguyenkiet/Documents/C++/request /Users/nguyenkiet/Documents/C++/request/src /Users/nguyenkiet/Documents/C++/request/build /Users/nguyenkiet/Documents/C++/request/build/src /Users/nguyenkiet/Documents/C++/request/build/src/CMakeFiles/reqrep.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : src/CMakeFiles/reqrep.dir/depend

