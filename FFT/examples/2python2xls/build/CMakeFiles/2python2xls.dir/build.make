# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.25

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\embedded\EmbeddedSoftware\DSP\FFT\examples\2python2xls

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\embedded\EmbeddedSoftware\DSP\FFT\examples\2python2xls\build

# Include any dependencies generated for this target.
include CMakeFiles/2python2xls.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/2python2xls.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/2python2xls.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/2python2xls.dir/flags.make

CMakeFiles/2python2xls.dir/main.c.obj: CMakeFiles/2python2xls.dir/flags.make
CMakeFiles/2python2xls.dir/main.c.obj: CMakeFiles/2python2xls.dir/includes_C.rsp
CMakeFiles/2python2xls.dir/main.c.obj: D:/embedded/EmbeddedSoftware/DSP/FFT/examples/2python2xls/main.c
CMakeFiles/2python2xls.dir/main.c.obj: CMakeFiles/2python2xls.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\embedded\EmbeddedSoftware\DSP\FFT\examples\2python2xls\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/2python2xls.dir/main.c.obj"
	C:\Users\YEWAN\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/2python2xls.dir/main.c.obj -MF CMakeFiles\2python2xls.dir\main.c.obj.d -o CMakeFiles\2python2xls.dir\main.c.obj -c D:\embedded\EmbeddedSoftware\DSP\FFT\examples\2python2xls\main.c

CMakeFiles/2python2xls.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/2python2xls.dir/main.c.i"
	C:\Users\YEWAN\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\embedded\EmbeddedSoftware\DSP\FFT\examples\2python2xls\main.c > CMakeFiles\2python2xls.dir\main.c.i

CMakeFiles/2python2xls.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/2python2xls.dir/main.c.s"
	C:\Users\YEWAN\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\embedded\EmbeddedSoftware\DSP\FFT\examples\2python2xls\main.c -o CMakeFiles\2python2xls.dir\main.c.s

# Object files for target 2python2xls
2python2xls_OBJECTS = \
"CMakeFiles/2python2xls.dir/main.c.obj"

# External object files for target 2python2xls
2python2xls_EXTERNAL_OBJECTS =

D:/embedded/EmbeddedSoftware/DSP/FFT/examples/2python2xls/bin/2python2xls.exe: CMakeFiles/2python2xls.dir/main.c.obj
D:/embedded/EmbeddedSoftware/DSP/FFT/examples/2python2xls/bin/2python2xls.exe: CMakeFiles/2python2xls.dir/build.make
D:/embedded/EmbeddedSoftware/DSP/FFT/examples/2python2xls/bin/2python2xls.exe: D:/embedded/EmbeddedSoftware/DSP/FFT/examples/2python2xls/../../lib/fft.a
D:/embedded/EmbeddedSoftware/DSP/FFT/examples/2python2xls/bin/2python2xls.exe: C:/Users/YEWAN/AppData/Local/Programs/Python/Python311/libs/python311.lib
D:/embedded/EmbeddedSoftware/DSP/FFT/examples/2python2xls/bin/2python2xls.exe: CMakeFiles/2python2xls.dir/linkLibs.rsp
D:/embedded/EmbeddedSoftware/DSP/FFT/examples/2python2xls/bin/2python2xls.exe: CMakeFiles/2python2xls.dir/objects1
D:/embedded/EmbeddedSoftware/DSP/FFT/examples/2python2xls/bin/2python2xls.exe: CMakeFiles/2python2xls.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\embedded\EmbeddedSoftware\DSP\FFT\examples\2python2xls\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable D:\embedded\EmbeddedSoftware\DSP\FFT\examples\2python2xls\bin\2python2xls.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\2python2xls.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/2python2xls.dir/build: D:/embedded/EmbeddedSoftware/DSP/FFT/examples/2python2xls/bin/2python2xls.exe
.PHONY : CMakeFiles/2python2xls.dir/build

CMakeFiles/2python2xls.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\2python2xls.dir\cmake_clean.cmake
.PHONY : CMakeFiles/2python2xls.dir/clean

CMakeFiles/2python2xls.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\embedded\EmbeddedSoftware\DSP\FFT\examples\2python2xls D:\embedded\EmbeddedSoftware\DSP\FFT\examples\2python2xls D:\embedded\EmbeddedSoftware\DSP\FFT\examples\2python2xls\build D:\embedded\EmbeddedSoftware\DSP\FFT\examples\2python2xls\build D:\embedded\EmbeddedSoftware\DSP\FFT\examples\2python2xls\build\CMakeFiles\2python2xls.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/2python2xls.dir/depend

