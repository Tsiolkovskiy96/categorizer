# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.18

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
CMAKE_COMMAND = /Applications/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Applications/CMake.app/Contents/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/vyacheslavtarakanov/Documents/GeekBrains/Qt/HomeTasks/HomeTasks/Урок4/categorizer

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/vyacheslavtarakanov/Documents/GeekBrains/Qt/HomeTasks/HomeTasks/Урок4/categorizer/build

# Include any dependencies generated for this target.
include CMakeFiles/categorizer.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/categorizer.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/categorizer.dir/flags.make

CMakeFiles/categorizer.dir/src/categorizer.cpp.o: CMakeFiles/categorizer.dir/flags.make
CMakeFiles/categorizer.dir/src/categorizer.cpp.o: ../src/categorizer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/vyacheslavtarakanov/Documents/GeekBrains/Qt/HomeTasks/HomeTasks/Урок4/categorizer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/categorizer.dir/src/categorizer.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/categorizer.dir/src/categorizer.cpp.o -c /Users/vyacheslavtarakanov/Documents/GeekBrains/Qt/HomeTasks/HomeTasks/Урок4/categorizer/src/categorizer.cpp

CMakeFiles/categorizer.dir/src/categorizer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/categorizer.dir/src/categorizer.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/vyacheslavtarakanov/Documents/GeekBrains/Qt/HomeTasks/HomeTasks/Урок4/categorizer/src/categorizer.cpp > CMakeFiles/categorizer.dir/src/categorizer.cpp.i

CMakeFiles/categorizer.dir/src/categorizer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/categorizer.dir/src/categorizer.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/vyacheslavtarakanov/Documents/GeekBrains/Qt/HomeTasks/HomeTasks/Урок4/categorizer/src/categorizer.cpp -o CMakeFiles/categorizer.dir/src/categorizer.cpp.s

# Object files for target categorizer
categorizer_OBJECTS = \
"CMakeFiles/categorizer.dir/src/categorizer.cpp.o"

# External object files for target categorizer
categorizer_EXTERNAL_OBJECTS =

categorizer: CMakeFiles/categorizer.dir/src/categorizer.cpp.o
categorizer: CMakeFiles/categorizer.dir/build.make
categorizer: CMakeFiles/categorizer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/vyacheslavtarakanov/Documents/GeekBrains/Qt/HomeTasks/HomeTasks/Урок4/categorizer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable categorizer"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/categorizer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/categorizer.dir/build: categorizer

.PHONY : CMakeFiles/categorizer.dir/build

CMakeFiles/categorizer.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/categorizer.dir/cmake_clean.cmake
.PHONY : CMakeFiles/categorizer.dir/clean

CMakeFiles/categorizer.dir/depend:
	cd /Users/vyacheslavtarakanov/Documents/GeekBrains/Qt/HomeTasks/HomeTasks/Урок4/categorizer/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/vyacheslavtarakanov/Documents/GeekBrains/Qt/HomeTasks/HomeTasks/Урок4/categorizer /Users/vyacheslavtarakanov/Documents/GeekBrains/Qt/HomeTasks/HomeTasks/Урок4/categorizer /Users/vyacheslavtarakanov/Documents/GeekBrains/Qt/HomeTasks/HomeTasks/Урок4/categorizer/build /Users/vyacheslavtarakanov/Documents/GeekBrains/Qt/HomeTasks/HomeTasks/Урок4/categorizer/build /Users/vyacheslavtarakanov/Documents/GeekBrains/Qt/HomeTasks/HomeTasks/Урок4/categorizer/build/CMakeFiles/categorizer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/categorizer.dir/depend
