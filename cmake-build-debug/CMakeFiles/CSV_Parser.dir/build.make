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
CMAKE_SOURCE_DIR = /mnt/c/source/Adam/CSV_Parser

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/c/source/Adam/CSV_Parser/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/CSV_Parser.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/CSV_Parser.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/CSV_Parser.dir/flags.make

CMakeFiles/CSV_Parser.dir/src/main.c.o: CMakeFiles/CSV_Parser.dir/flags.make
CMakeFiles/CSV_Parser.dir/src/main.c.o: ../src/main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/source/Adam/CSV_Parser/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/CSV_Parser.dir/src/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/CSV_Parser.dir/src/main.c.o   -c /mnt/c/source/Adam/CSV_Parser/src/main.c

CMakeFiles/CSV_Parser.dir/src/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/CSV_Parser.dir/src/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/source/Adam/CSV_Parser/src/main.c > CMakeFiles/CSV_Parser.dir/src/main.c.i

CMakeFiles/CSV_Parser.dir/src/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/CSV_Parser.dir/src/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/source/Adam/CSV_Parser/src/main.c -o CMakeFiles/CSV_Parser.dir/src/main.c.s

CMakeFiles/CSV_Parser.dir/src/main.c.o.requires:

.PHONY : CMakeFiles/CSV_Parser.dir/src/main.c.o.requires

CMakeFiles/CSV_Parser.dir/src/main.c.o.provides: CMakeFiles/CSV_Parser.dir/src/main.c.o.requires
	$(MAKE) -f CMakeFiles/CSV_Parser.dir/build.make CMakeFiles/CSV_Parser.dir/src/main.c.o.provides.build
.PHONY : CMakeFiles/CSV_Parser.dir/src/main.c.o.provides

CMakeFiles/CSV_Parser.dir/src/main.c.o.provides.build: CMakeFiles/CSV_Parser.dir/src/main.c.o


CMakeFiles/CSV_Parser.dir/src/csvparser.c.o: CMakeFiles/CSV_Parser.dir/flags.make
CMakeFiles/CSV_Parser.dir/src/csvparser.c.o: ../src/csvparser.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/source/Adam/CSV_Parser/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/CSV_Parser.dir/src/csvparser.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/CSV_Parser.dir/src/csvparser.c.o   -c /mnt/c/source/Adam/CSV_Parser/src/csvparser.c

CMakeFiles/CSV_Parser.dir/src/csvparser.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/CSV_Parser.dir/src/csvparser.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/source/Adam/CSV_Parser/src/csvparser.c > CMakeFiles/CSV_Parser.dir/src/csvparser.c.i

CMakeFiles/CSV_Parser.dir/src/csvparser.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/CSV_Parser.dir/src/csvparser.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/source/Adam/CSV_Parser/src/csvparser.c -o CMakeFiles/CSV_Parser.dir/src/csvparser.c.s

CMakeFiles/CSV_Parser.dir/src/csvparser.c.o.requires:

.PHONY : CMakeFiles/CSV_Parser.dir/src/csvparser.c.o.requires

CMakeFiles/CSV_Parser.dir/src/csvparser.c.o.provides: CMakeFiles/CSV_Parser.dir/src/csvparser.c.o.requires
	$(MAKE) -f CMakeFiles/CSV_Parser.dir/build.make CMakeFiles/CSV_Parser.dir/src/csvparser.c.o.provides.build
.PHONY : CMakeFiles/CSV_Parser.dir/src/csvparser.c.o.provides

CMakeFiles/CSV_Parser.dir/src/csvparser.c.o.provides.build: CMakeFiles/CSV_Parser.dir/src/csvparser.c.o


# Object files for target CSV_Parser
CSV_Parser_OBJECTS = \
"CMakeFiles/CSV_Parser.dir/src/main.c.o" \
"CMakeFiles/CSV_Parser.dir/src/csvparser.c.o"

# External object files for target CSV_Parser
CSV_Parser_EXTERNAL_OBJECTS =

CSV_Parser: CMakeFiles/CSV_Parser.dir/src/main.c.o
CSV_Parser: CMakeFiles/CSV_Parser.dir/src/csvparser.c.o
CSV_Parser: CMakeFiles/CSV_Parser.dir/build.make
CSV_Parser: CMakeFiles/CSV_Parser.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/c/source/Adam/CSV_Parser/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable CSV_Parser"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/CSV_Parser.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/CSV_Parser.dir/build: CSV_Parser

.PHONY : CMakeFiles/CSV_Parser.dir/build

CMakeFiles/CSV_Parser.dir/requires: CMakeFiles/CSV_Parser.dir/src/main.c.o.requires
CMakeFiles/CSV_Parser.dir/requires: CMakeFiles/CSV_Parser.dir/src/csvparser.c.o.requires

.PHONY : CMakeFiles/CSV_Parser.dir/requires

CMakeFiles/CSV_Parser.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/CSV_Parser.dir/cmake_clean.cmake
.PHONY : CMakeFiles/CSV_Parser.dir/clean

CMakeFiles/CSV_Parser.dir/depend:
	cd /mnt/c/source/Adam/CSV_Parser/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/source/Adam/CSV_Parser /mnt/c/source/Adam/CSV_Parser /mnt/c/source/Adam/CSV_Parser/cmake-build-debug /mnt/c/source/Adam/CSV_Parser/cmake-build-debug /mnt/c/source/Adam/CSV_Parser/cmake-build-debug/CMakeFiles/CSV_Parser.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/CSV_Parser.dir/depend

