# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/filip/Desktop/Reporziturijum/urs-2024/lab-02/app-cmake

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/filip/Desktop/Reporziturijum/urs-2024/lab-02/app-cmake/build

# Include any dependencies generated for this target.
include test/CMakeFiles/test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/CMakeFiles/test.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/test.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/test.dir/flags.make

test/CMakeFiles/test.dir/print.c.o: test/CMakeFiles/test.dir/flags.make
test/CMakeFiles/test.dir/print.c.o: ../test/print.c
test/CMakeFiles/test.dir/print.c.o: test/CMakeFiles/test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/filip/Desktop/Reporziturijum/urs-2024/lab-02/app-cmake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object test/CMakeFiles/test.dir/print.c.o"
	cd /home/filip/Desktop/Reporziturijum/urs-2024/lab-02/app-cmake/build/test && /home/filip/x-tools/arm-etfbl-linux-gnueabihf/bin/arm-linux-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT test/CMakeFiles/test.dir/print.c.o -MF CMakeFiles/test.dir/print.c.o.d -o CMakeFiles/test.dir/print.c.o -c /home/filip/Desktop/Reporziturijum/urs-2024/lab-02/app-cmake/test/print.c

test/CMakeFiles/test.dir/print.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/test.dir/print.c.i"
	cd /home/filip/Desktop/Reporziturijum/urs-2024/lab-02/app-cmake/build/test && /home/filip/x-tools/arm-etfbl-linux-gnueabihf/bin/arm-linux-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/filip/Desktop/Reporziturijum/urs-2024/lab-02/app-cmake/test/print.c > CMakeFiles/test.dir/print.c.i

test/CMakeFiles/test.dir/print.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/test.dir/print.c.s"
	cd /home/filip/Desktop/Reporziturijum/urs-2024/lab-02/app-cmake/build/test && /home/filip/x-tools/arm-etfbl-linux-gnueabihf/bin/arm-linux-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/filip/Desktop/Reporziturijum/urs-2024/lab-02/app-cmake/test/print.c -o CMakeFiles/test.dir/print.c.s

test/CMakeFiles/test.dir/sum.c.o: test/CMakeFiles/test.dir/flags.make
test/CMakeFiles/test.dir/sum.c.o: ../test/sum.c
test/CMakeFiles/test.dir/sum.c.o: test/CMakeFiles/test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/filip/Desktop/Reporziturijum/urs-2024/lab-02/app-cmake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object test/CMakeFiles/test.dir/sum.c.o"
	cd /home/filip/Desktop/Reporziturijum/urs-2024/lab-02/app-cmake/build/test && /home/filip/x-tools/arm-etfbl-linux-gnueabihf/bin/arm-linux-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT test/CMakeFiles/test.dir/sum.c.o -MF CMakeFiles/test.dir/sum.c.o.d -o CMakeFiles/test.dir/sum.c.o -c /home/filip/Desktop/Reporziturijum/urs-2024/lab-02/app-cmake/test/sum.c

test/CMakeFiles/test.dir/sum.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/test.dir/sum.c.i"
	cd /home/filip/Desktop/Reporziturijum/urs-2024/lab-02/app-cmake/build/test && /home/filip/x-tools/arm-etfbl-linux-gnueabihf/bin/arm-linux-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/filip/Desktop/Reporziturijum/urs-2024/lab-02/app-cmake/test/sum.c > CMakeFiles/test.dir/sum.c.i

test/CMakeFiles/test.dir/sum.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/test.dir/sum.c.s"
	cd /home/filip/Desktop/Reporziturijum/urs-2024/lab-02/app-cmake/build/test && /home/filip/x-tools/arm-etfbl-linux-gnueabihf/bin/arm-linux-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/filip/Desktop/Reporziturijum/urs-2024/lab-02/app-cmake/test/sum.c -o CMakeFiles/test.dir/sum.c.s

# Object files for target test
test_OBJECTS = \
"CMakeFiles/test.dir/print.c.o" \
"CMakeFiles/test.dir/sum.c.o"

# External object files for target test
test_EXTERNAL_OBJECTS =

test/libtest.a: test/CMakeFiles/test.dir/print.c.o
test/libtest.a: test/CMakeFiles/test.dir/sum.c.o
test/libtest.a: test/CMakeFiles/test.dir/build.make
test/libtest.a: test/CMakeFiles/test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/filip/Desktop/Reporziturijum/urs-2024/lab-02/app-cmake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C static library libtest.a"
	cd /home/filip/Desktop/Reporziturijum/urs-2024/lab-02/app-cmake/build/test && $(CMAKE_COMMAND) -P CMakeFiles/test.dir/cmake_clean_target.cmake
	cd /home/filip/Desktop/Reporziturijum/urs-2024/lab-02/app-cmake/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/test.dir/build: test/libtest.a
.PHONY : test/CMakeFiles/test.dir/build

test/CMakeFiles/test.dir/clean:
	cd /home/filip/Desktop/Reporziturijum/urs-2024/lab-02/app-cmake/build/test && $(CMAKE_COMMAND) -P CMakeFiles/test.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/test.dir/clean

test/CMakeFiles/test.dir/depend:
	cd /home/filip/Desktop/Reporziturijum/urs-2024/lab-02/app-cmake/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/filip/Desktop/Reporziturijum/urs-2024/lab-02/app-cmake /home/filip/Desktop/Reporziturijum/urs-2024/lab-02/app-cmake/test /home/filip/Desktop/Reporziturijum/urs-2024/lab-02/app-cmake/build /home/filip/Desktop/Reporziturijum/urs-2024/lab-02/app-cmake/build/test /home/filip/Desktop/Reporziturijum/urs-2024/lab-02/app-cmake/build/test/CMakeFiles/test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/test.dir/depend

