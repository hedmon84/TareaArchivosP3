# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.8

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
CMAKE_COMMAND = "/cygdrive/c/Users/Erick Nisbeth/.CLion2017.2/system/cygwin_cmake/bin/cmake.exe"

# The command to remove a file.
RM = "/cygdrive/c/Users/Erick Nisbeth/.CLion2017.2/system/cygwin_cmake/bin/cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/cygdrive/c/Users/Erick Nisbeth/CLionProjects/Archivos"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/cygdrive/c/Users/Erick Nisbeth/CLionProjects/Archivos/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/Archivos.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Archivos.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Archivos.dir/flags.make

CMakeFiles/Archivos.dir/main.cpp.o: CMakeFiles/Archivos.dir/flags.make
CMakeFiles/Archivos.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/cygdrive/c/Users/Erick Nisbeth/CLionProjects/Archivos/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Archivos.dir/main.cpp.o"
	/usr/bin/c++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Archivos.dir/main.cpp.o -c "/cygdrive/c/Users/Erick Nisbeth/CLionProjects/Archivos/main.cpp"

CMakeFiles/Archivos.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Archivos.dir/main.cpp.i"
	/usr/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/cygdrive/c/Users/Erick Nisbeth/CLionProjects/Archivos/main.cpp" > CMakeFiles/Archivos.dir/main.cpp.i

CMakeFiles/Archivos.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Archivos.dir/main.cpp.s"
	/usr/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/cygdrive/c/Users/Erick Nisbeth/CLionProjects/Archivos/main.cpp" -o CMakeFiles/Archivos.dir/main.cpp.s

CMakeFiles/Archivos.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/Archivos.dir/main.cpp.o.requires

CMakeFiles/Archivos.dir/main.cpp.o.provides: CMakeFiles/Archivos.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/Archivos.dir/build.make CMakeFiles/Archivos.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/Archivos.dir/main.cpp.o.provides

CMakeFiles/Archivos.dir/main.cpp.o.provides.build: CMakeFiles/Archivos.dir/main.cpp.o


CMakeFiles/Archivos.dir/Notas.cpp.o: CMakeFiles/Archivos.dir/flags.make
CMakeFiles/Archivos.dir/Notas.cpp.o: ../Notas.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/cygdrive/c/Users/Erick Nisbeth/CLionProjects/Archivos/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Archivos.dir/Notas.cpp.o"
	/usr/bin/c++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Archivos.dir/Notas.cpp.o -c "/cygdrive/c/Users/Erick Nisbeth/CLionProjects/Archivos/Notas.cpp"

CMakeFiles/Archivos.dir/Notas.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Archivos.dir/Notas.cpp.i"
	/usr/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/cygdrive/c/Users/Erick Nisbeth/CLionProjects/Archivos/Notas.cpp" > CMakeFiles/Archivos.dir/Notas.cpp.i

CMakeFiles/Archivos.dir/Notas.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Archivos.dir/Notas.cpp.s"
	/usr/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/cygdrive/c/Users/Erick Nisbeth/CLionProjects/Archivos/Notas.cpp" -o CMakeFiles/Archivos.dir/Notas.cpp.s

CMakeFiles/Archivos.dir/Notas.cpp.o.requires:

.PHONY : CMakeFiles/Archivos.dir/Notas.cpp.o.requires

CMakeFiles/Archivos.dir/Notas.cpp.o.provides: CMakeFiles/Archivos.dir/Notas.cpp.o.requires
	$(MAKE) -f CMakeFiles/Archivos.dir/build.make CMakeFiles/Archivos.dir/Notas.cpp.o.provides.build
.PHONY : CMakeFiles/Archivos.dir/Notas.cpp.o.provides

CMakeFiles/Archivos.dir/Notas.cpp.o.provides.build: CMakeFiles/Archivos.dir/Notas.cpp.o


# Object files for target Archivos
Archivos_OBJECTS = \
"CMakeFiles/Archivos.dir/main.cpp.o" \
"CMakeFiles/Archivos.dir/Notas.cpp.o"

# External object files for target Archivos
Archivos_EXTERNAL_OBJECTS =

Archivos.exe: CMakeFiles/Archivos.dir/main.cpp.o
Archivos.exe: CMakeFiles/Archivos.dir/Notas.cpp.o
Archivos.exe: CMakeFiles/Archivos.dir/build.make
Archivos.exe: CMakeFiles/Archivos.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/cygdrive/c/Users/Erick Nisbeth/CLionProjects/Archivos/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable Archivos.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Archivos.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Archivos.dir/build: Archivos.exe

.PHONY : CMakeFiles/Archivos.dir/build

CMakeFiles/Archivos.dir/requires: CMakeFiles/Archivos.dir/main.cpp.o.requires
CMakeFiles/Archivos.dir/requires: CMakeFiles/Archivos.dir/Notas.cpp.o.requires

.PHONY : CMakeFiles/Archivos.dir/requires

CMakeFiles/Archivos.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Archivos.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Archivos.dir/clean

CMakeFiles/Archivos.dir/depend:
	cd "/cygdrive/c/Users/Erick Nisbeth/CLionProjects/Archivos/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/cygdrive/c/Users/Erick Nisbeth/CLionProjects/Archivos" "/cygdrive/c/Users/Erick Nisbeth/CLionProjects/Archivos" "/cygdrive/c/Users/Erick Nisbeth/CLionProjects/Archivos/cmake-build-debug" "/cygdrive/c/Users/Erick Nisbeth/CLionProjects/Archivos/cmake-build-debug" "/cygdrive/c/Users/Erick Nisbeth/CLionProjects/Archivos/cmake-build-debug/CMakeFiles/Archivos.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/Archivos.dir/depend

