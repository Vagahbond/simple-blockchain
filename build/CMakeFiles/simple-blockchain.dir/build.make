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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /usr/app/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /usr/app/src/build

# Include any dependencies generated for this target.
include CMakeFiles/simple-blockchain.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/simple-blockchain.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/simple-blockchain.dir/flags.make

CMakeFiles/simple-blockchain.dir/src/block.cpp.o: CMakeFiles/simple-blockchain.dir/flags.make
CMakeFiles/simple-blockchain.dir/src/block.cpp.o: ../src/block.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/usr/app/src/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/simple-blockchain.dir/src/block.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/simple-blockchain.dir/src/block.cpp.o -c /usr/app/src/src/block.cpp

CMakeFiles/simple-blockchain.dir/src/block.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/simple-blockchain.dir/src/block.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /usr/app/src/src/block.cpp > CMakeFiles/simple-blockchain.dir/src/block.cpp.i

CMakeFiles/simple-blockchain.dir/src/block.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/simple-blockchain.dir/src/block.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /usr/app/src/src/block.cpp -o CMakeFiles/simple-blockchain.dir/src/block.cpp.s

CMakeFiles/simple-blockchain.dir/src/main.cpp.o: CMakeFiles/simple-blockchain.dir/flags.make
CMakeFiles/simple-blockchain.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/usr/app/src/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/simple-blockchain.dir/src/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/simple-blockchain.dir/src/main.cpp.o -c /usr/app/src/src/main.cpp

CMakeFiles/simple-blockchain.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/simple-blockchain.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /usr/app/src/src/main.cpp > CMakeFiles/simple-blockchain.dir/src/main.cpp.i

CMakeFiles/simple-blockchain.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/simple-blockchain.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /usr/app/src/src/main.cpp -o CMakeFiles/simple-blockchain.dir/src/main.cpp.s

# Object files for target simple-blockchain
simple__blockchain_OBJECTS = \
"CMakeFiles/simple-blockchain.dir/src/block.cpp.o" \
"CMakeFiles/simple-blockchain.dir/src/main.cpp.o"

# External object files for target simple-blockchain
simple__blockchain_EXTERNAL_OBJECTS =

simple-blockchain: CMakeFiles/simple-blockchain.dir/src/block.cpp.o
simple-blockchain: CMakeFiles/simple-blockchain.dir/src/main.cpp.o
simple-blockchain: CMakeFiles/simple-blockchain.dir/build.make
simple-blockchain: /usr/lib/x86_64-linux-gnu/libcrypto.a
simple-blockchain: CMakeFiles/simple-blockchain.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/usr/app/src/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable simple-blockchain"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/simple-blockchain.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/simple-blockchain.dir/build: simple-blockchain

.PHONY : CMakeFiles/simple-blockchain.dir/build

CMakeFiles/simple-blockchain.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/simple-blockchain.dir/cmake_clean.cmake
.PHONY : CMakeFiles/simple-blockchain.dir/clean

CMakeFiles/simple-blockchain.dir/depend:
	cd /usr/app/src/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /usr/app/src /usr/app/src /usr/app/src/build /usr/app/src/build /usr/app/src/build/CMakeFiles/simple-blockchain.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/simple-blockchain.dir/depend
