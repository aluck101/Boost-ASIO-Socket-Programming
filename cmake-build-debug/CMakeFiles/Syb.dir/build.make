# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.19

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
CMAKE_COMMAND = "/Users/tundealuko/Library/Application Support/JetBrains/Toolbox/apps/CLion-ARM/ch-0/211.6693.114/CLion.app/Contents/bin/cmake/mac/bin/cmake"

# The command to remove a file.
RM = "/Users/tundealuko/Library/Application Support/JetBrains/Toolbox/apps/CLion-ARM/ch-0/211.6693.114/CLion.app/Contents/bin/cmake/mac/bin/cmake" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/tundealuko/Codes/SyncSocket

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/tundealuko/Codes/SyncSocket/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Syb.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Syb.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Syb.dir/flags.make

CMakeFiles/Syb.dir/server.cpp.o: CMakeFiles/Syb.dir/flags.make
CMakeFiles/Syb.dir/server.cpp.o: ../server.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/tundealuko/Codes/SyncSocket/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Syb.dir/server.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Syb.dir/server.cpp.o -c /Users/tundealuko/Codes/SyncSocket/server.cpp

CMakeFiles/Syb.dir/server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Syb.dir/server.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/tundealuko/Codes/SyncSocket/server.cpp > CMakeFiles/Syb.dir/server.cpp.i

CMakeFiles/Syb.dir/server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Syb.dir/server.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/tundealuko/Codes/SyncSocket/server.cpp -o CMakeFiles/Syb.dir/server.cpp.s

# Object files for target Syb
Syb_OBJECTS = \
"CMakeFiles/Syb.dir/server.cpp.o"

# External object files for target Syb
Syb_EXTERNAL_OBJECTS =

Syb: CMakeFiles/Syb.dir/server.cpp.o
Syb: CMakeFiles/Syb.dir/build.make
Syb: CMakeFiles/Syb.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/tundealuko/Codes/SyncSocket/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Syb"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Syb.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Syb.dir/build: Syb

.PHONY : CMakeFiles/Syb.dir/build

CMakeFiles/Syb.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Syb.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Syb.dir/clean

CMakeFiles/Syb.dir/depend:
	cd /Users/tundealuko/Codes/SyncSocket/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/tundealuko/Codes/SyncSocket /Users/tundealuko/Codes/SyncSocket /Users/tundealuko/Codes/SyncSocket/cmake-build-debug /Users/tundealuko/Codes/SyncSocket/cmake-build-debug /Users/tundealuko/Codes/SyncSocket/cmake-build-debug/CMakeFiles/Syb.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Syb.dir/depend
