# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_SOURCE_DIR = /home/johan/Programming/bubba3d/Bubba-3D

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/johan/Programming/bubba3d/Bubba-3D/build

# Include any dependencies generated for this target.
include CMakeFiles/test.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/test.dir/flags.make

CMakeFiles/test.dir/src/test.cpp.o: CMakeFiles/test.dir/flags.make
CMakeFiles/test.dir/src/test.cpp.o: ../src/test.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/johan/Programming/bubba3d/Bubba-3D/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/test.dir/src/test.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/test.dir/src/test.cpp.o -c /home/johan/Programming/bubba3d/Bubba-3D/src/test.cpp

CMakeFiles/test.dir/src/test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test.dir/src/test.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/johan/Programming/bubba3d/Bubba-3D/src/test.cpp > CMakeFiles/test.dir/src/test.cpp.i

CMakeFiles/test.dir/src/test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test.dir/src/test.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/johan/Programming/bubba3d/Bubba-3D/src/test.cpp -o CMakeFiles/test.dir/src/test.cpp.s

CMakeFiles/test.dir/src/test.cpp.o.requires:
.PHONY : CMakeFiles/test.dir/src/test.cpp.o.requires

CMakeFiles/test.dir/src/test.cpp.o.provides: CMakeFiles/test.dir/src/test.cpp.o.requires
	$(MAKE) -f CMakeFiles/test.dir/build.make CMakeFiles/test.dir/src/test.cpp.o.provides.build
.PHONY : CMakeFiles/test.dir/src/test.cpp.o.provides

CMakeFiles/test.dir/src/test.cpp.o.provides.build: CMakeFiles/test.dir/src/test.cpp.o

CMakeFiles/test.dir/src/objects/Scene.cpp.o: CMakeFiles/test.dir/flags.make
CMakeFiles/test.dir/src/objects/Scene.cpp.o: ../src/objects/Scene.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/johan/Programming/bubba3d/Bubba-3D/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/test.dir/src/objects/Scene.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/test.dir/src/objects/Scene.cpp.o -c /home/johan/Programming/bubba3d/Bubba-3D/src/objects/Scene.cpp

CMakeFiles/test.dir/src/objects/Scene.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test.dir/src/objects/Scene.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/johan/Programming/bubba3d/Bubba-3D/src/objects/Scene.cpp > CMakeFiles/test.dir/src/objects/Scene.cpp.i

CMakeFiles/test.dir/src/objects/Scene.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test.dir/src/objects/Scene.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/johan/Programming/bubba3d/Bubba-3D/src/objects/Scene.cpp -o CMakeFiles/test.dir/src/objects/Scene.cpp.s

CMakeFiles/test.dir/src/objects/Scene.cpp.o.requires:
.PHONY : CMakeFiles/test.dir/src/objects/Scene.cpp.o.requires

CMakeFiles/test.dir/src/objects/Scene.cpp.o.provides: CMakeFiles/test.dir/src/objects/Scene.cpp.o.requires
	$(MAKE) -f CMakeFiles/test.dir/build.make CMakeFiles/test.dir/src/objects/Scene.cpp.o.provides.build
.PHONY : CMakeFiles/test.dir/src/objects/Scene.cpp.o.provides

CMakeFiles/test.dir/src/objects/Scene.cpp.o.provides.build: CMakeFiles/test.dir/src/objects/Scene.cpp.o

CMakeFiles/test.dir/src/logging/Logger.cpp.o: CMakeFiles/test.dir/flags.make
CMakeFiles/test.dir/src/logging/Logger.cpp.o: ../src/logging/Logger.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/johan/Programming/bubba3d/Bubba-3D/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/test.dir/src/logging/Logger.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/test.dir/src/logging/Logger.cpp.o -c /home/johan/Programming/bubba3d/Bubba-3D/src/logging/Logger.cpp

CMakeFiles/test.dir/src/logging/Logger.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test.dir/src/logging/Logger.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/johan/Programming/bubba3d/Bubba-3D/src/logging/Logger.cpp > CMakeFiles/test.dir/src/logging/Logger.cpp.i

CMakeFiles/test.dir/src/logging/Logger.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test.dir/src/logging/Logger.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/johan/Programming/bubba3d/Bubba-3D/src/logging/Logger.cpp -o CMakeFiles/test.dir/src/logging/Logger.cpp.s

CMakeFiles/test.dir/src/logging/Logger.cpp.o.requires:
.PHONY : CMakeFiles/test.dir/src/logging/Logger.cpp.o.requires

CMakeFiles/test.dir/src/logging/Logger.cpp.o.provides: CMakeFiles/test.dir/src/logging/Logger.cpp.o.requires
	$(MAKE) -f CMakeFiles/test.dir/build.make CMakeFiles/test.dir/src/logging/Logger.cpp.o.provides.build
.PHONY : CMakeFiles/test.dir/src/logging/Logger.cpp.o.provides

CMakeFiles/test.dir/src/logging/Logger.cpp.o.provides.build: CMakeFiles/test.dir/src/logging/Logger.cpp.o

CMakeFiles/test.dir/includes/linmath/float2.cpp.o: CMakeFiles/test.dir/flags.make
CMakeFiles/test.dir/includes/linmath/float2.cpp.o: ../includes/linmath/float2.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/johan/Programming/bubba3d/Bubba-3D/build/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/test.dir/includes/linmath/float2.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/test.dir/includes/linmath/float2.cpp.o -c /home/johan/Programming/bubba3d/Bubba-3D/includes/linmath/float2.cpp

CMakeFiles/test.dir/includes/linmath/float2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test.dir/includes/linmath/float2.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/johan/Programming/bubba3d/Bubba-3D/includes/linmath/float2.cpp > CMakeFiles/test.dir/includes/linmath/float2.cpp.i

CMakeFiles/test.dir/includes/linmath/float2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test.dir/includes/linmath/float2.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/johan/Programming/bubba3d/Bubba-3D/includes/linmath/float2.cpp -o CMakeFiles/test.dir/includes/linmath/float2.cpp.s

CMakeFiles/test.dir/includes/linmath/float2.cpp.o.requires:
.PHONY : CMakeFiles/test.dir/includes/linmath/float2.cpp.o.requires

CMakeFiles/test.dir/includes/linmath/float2.cpp.o.provides: CMakeFiles/test.dir/includes/linmath/float2.cpp.o.requires
	$(MAKE) -f CMakeFiles/test.dir/build.make CMakeFiles/test.dir/includes/linmath/float2.cpp.o.provides.build
.PHONY : CMakeFiles/test.dir/includes/linmath/float2.cpp.o.provides

CMakeFiles/test.dir/includes/linmath/float2.cpp.o.provides.build: CMakeFiles/test.dir/includes/linmath/float2.cpp.o

CMakeFiles/test.dir/includes/linmath/float4.cpp.o: CMakeFiles/test.dir/flags.make
CMakeFiles/test.dir/includes/linmath/float4.cpp.o: ../includes/linmath/float4.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/johan/Programming/bubba3d/Bubba-3D/build/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/test.dir/includes/linmath/float4.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/test.dir/includes/linmath/float4.cpp.o -c /home/johan/Programming/bubba3d/Bubba-3D/includes/linmath/float4.cpp

CMakeFiles/test.dir/includes/linmath/float4.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test.dir/includes/linmath/float4.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/johan/Programming/bubba3d/Bubba-3D/includes/linmath/float4.cpp > CMakeFiles/test.dir/includes/linmath/float4.cpp.i

CMakeFiles/test.dir/includes/linmath/float4.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test.dir/includes/linmath/float4.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/johan/Programming/bubba3d/Bubba-3D/includes/linmath/float4.cpp -o CMakeFiles/test.dir/includes/linmath/float4.cpp.s

CMakeFiles/test.dir/includes/linmath/float4.cpp.o.requires:
.PHONY : CMakeFiles/test.dir/includes/linmath/float4.cpp.o.requires

CMakeFiles/test.dir/includes/linmath/float4.cpp.o.provides: CMakeFiles/test.dir/includes/linmath/float4.cpp.o.requires
	$(MAKE) -f CMakeFiles/test.dir/build.make CMakeFiles/test.dir/includes/linmath/float4.cpp.o.provides.build
.PHONY : CMakeFiles/test.dir/includes/linmath/float4.cpp.o.provides

CMakeFiles/test.dir/includes/linmath/float4.cpp.o.provides.build: CMakeFiles/test.dir/includes/linmath/float4.cpp.o

CMakeFiles/test.dir/includes/linmath/int4.cpp.o: CMakeFiles/test.dir/flags.make
CMakeFiles/test.dir/includes/linmath/int4.cpp.o: ../includes/linmath/int4.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/johan/Programming/bubba3d/Bubba-3D/build/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/test.dir/includes/linmath/int4.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/test.dir/includes/linmath/int4.cpp.o -c /home/johan/Programming/bubba3d/Bubba-3D/includes/linmath/int4.cpp

CMakeFiles/test.dir/includes/linmath/int4.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test.dir/includes/linmath/int4.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/johan/Programming/bubba3d/Bubba-3D/includes/linmath/int4.cpp > CMakeFiles/test.dir/includes/linmath/int4.cpp.i

CMakeFiles/test.dir/includes/linmath/int4.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test.dir/includes/linmath/int4.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/johan/Programming/bubba3d/Bubba-3D/includes/linmath/int4.cpp -o CMakeFiles/test.dir/includes/linmath/int4.cpp.s

CMakeFiles/test.dir/includes/linmath/int4.cpp.o.requires:
.PHONY : CMakeFiles/test.dir/includes/linmath/int4.cpp.o.requires

CMakeFiles/test.dir/includes/linmath/int4.cpp.o.provides: CMakeFiles/test.dir/includes/linmath/int4.cpp.o.requires
	$(MAKE) -f CMakeFiles/test.dir/build.make CMakeFiles/test.dir/includes/linmath/int4.cpp.o.provides.build
.PHONY : CMakeFiles/test.dir/includes/linmath/int4.cpp.o.provides

CMakeFiles/test.dir/includes/linmath/int4.cpp.o.provides.build: CMakeFiles/test.dir/includes/linmath/int4.cpp.o

CMakeFiles/test.dir/includes/linmath/Quaternion.cpp.o: CMakeFiles/test.dir/flags.make
CMakeFiles/test.dir/includes/linmath/Quaternion.cpp.o: ../includes/linmath/Quaternion.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/johan/Programming/bubba3d/Bubba-3D/build/CMakeFiles $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/test.dir/includes/linmath/Quaternion.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/test.dir/includes/linmath/Quaternion.cpp.o -c /home/johan/Programming/bubba3d/Bubba-3D/includes/linmath/Quaternion.cpp

CMakeFiles/test.dir/includes/linmath/Quaternion.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test.dir/includes/linmath/Quaternion.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/johan/Programming/bubba3d/Bubba-3D/includes/linmath/Quaternion.cpp > CMakeFiles/test.dir/includes/linmath/Quaternion.cpp.i

CMakeFiles/test.dir/includes/linmath/Quaternion.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test.dir/includes/linmath/Quaternion.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/johan/Programming/bubba3d/Bubba-3D/includes/linmath/Quaternion.cpp -o CMakeFiles/test.dir/includes/linmath/Quaternion.cpp.s

CMakeFiles/test.dir/includes/linmath/Quaternion.cpp.o.requires:
.PHONY : CMakeFiles/test.dir/includes/linmath/Quaternion.cpp.o.requires

CMakeFiles/test.dir/includes/linmath/Quaternion.cpp.o.provides: CMakeFiles/test.dir/includes/linmath/Quaternion.cpp.o.requires
	$(MAKE) -f CMakeFiles/test.dir/build.make CMakeFiles/test.dir/includes/linmath/Quaternion.cpp.o.provides.build
.PHONY : CMakeFiles/test.dir/includes/linmath/Quaternion.cpp.o.provides

CMakeFiles/test.dir/includes/linmath/Quaternion.cpp.o.provides.build: CMakeFiles/test.dir/includes/linmath/Quaternion.cpp.o

CMakeFiles/test.dir/includes/linmath/int3.cpp.o: CMakeFiles/test.dir/flags.make
CMakeFiles/test.dir/includes/linmath/int3.cpp.o: ../includes/linmath/int3.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/johan/Programming/bubba3d/Bubba-3D/build/CMakeFiles $(CMAKE_PROGRESS_8)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/test.dir/includes/linmath/int3.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/test.dir/includes/linmath/int3.cpp.o -c /home/johan/Programming/bubba3d/Bubba-3D/includes/linmath/int3.cpp

CMakeFiles/test.dir/includes/linmath/int3.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test.dir/includes/linmath/int3.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/johan/Programming/bubba3d/Bubba-3D/includes/linmath/int3.cpp > CMakeFiles/test.dir/includes/linmath/int3.cpp.i

CMakeFiles/test.dir/includes/linmath/int3.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test.dir/includes/linmath/int3.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/johan/Programming/bubba3d/Bubba-3D/includes/linmath/int3.cpp -o CMakeFiles/test.dir/includes/linmath/int3.cpp.s

CMakeFiles/test.dir/includes/linmath/int3.cpp.o.requires:
.PHONY : CMakeFiles/test.dir/includes/linmath/int3.cpp.o.requires

CMakeFiles/test.dir/includes/linmath/int3.cpp.o.provides: CMakeFiles/test.dir/includes/linmath/int3.cpp.o.requires
	$(MAKE) -f CMakeFiles/test.dir/build.make CMakeFiles/test.dir/includes/linmath/int3.cpp.o.provides.build
.PHONY : CMakeFiles/test.dir/includes/linmath/int3.cpp.o.provides

CMakeFiles/test.dir/includes/linmath/int3.cpp.o.provides.build: CMakeFiles/test.dir/includes/linmath/int3.cpp.o

CMakeFiles/test.dir/includes/linmath/float3.cpp.o: CMakeFiles/test.dir/flags.make
CMakeFiles/test.dir/includes/linmath/float3.cpp.o: ../includes/linmath/float3.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/johan/Programming/bubba3d/Bubba-3D/build/CMakeFiles $(CMAKE_PROGRESS_9)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/test.dir/includes/linmath/float3.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/test.dir/includes/linmath/float3.cpp.o -c /home/johan/Programming/bubba3d/Bubba-3D/includes/linmath/float3.cpp

CMakeFiles/test.dir/includes/linmath/float3.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test.dir/includes/linmath/float3.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/johan/Programming/bubba3d/Bubba-3D/includes/linmath/float3.cpp > CMakeFiles/test.dir/includes/linmath/float3.cpp.i

CMakeFiles/test.dir/includes/linmath/float3.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test.dir/includes/linmath/float3.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/johan/Programming/bubba3d/Bubba-3D/includes/linmath/float3.cpp -o CMakeFiles/test.dir/includes/linmath/float3.cpp.s

CMakeFiles/test.dir/includes/linmath/float3.cpp.o.requires:
.PHONY : CMakeFiles/test.dir/includes/linmath/float3.cpp.o.requires

CMakeFiles/test.dir/includes/linmath/float3.cpp.o.provides: CMakeFiles/test.dir/includes/linmath/float3.cpp.o.requires
	$(MAKE) -f CMakeFiles/test.dir/build.make CMakeFiles/test.dir/includes/linmath/float3.cpp.o.provides.build
.PHONY : CMakeFiles/test.dir/includes/linmath/float3.cpp.o.provides

CMakeFiles/test.dir/includes/linmath/float3.cpp.o.provides.build: CMakeFiles/test.dir/includes/linmath/float3.cpp.o

CMakeFiles/test.dir/includes/linmath/float4x4.cpp.o: CMakeFiles/test.dir/flags.make
CMakeFiles/test.dir/includes/linmath/float4x4.cpp.o: ../includes/linmath/float4x4.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/johan/Programming/bubba3d/Bubba-3D/build/CMakeFiles $(CMAKE_PROGRESS_10)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/test.dir/includes/linmath/float4x4.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/test.dir/includes/linmath/float4x4.cpp.o -c /home/johan/Programming/bubba3d/Bubba-3D/includes/linmath/float4x4.cpp

CMakeFiles/test.dir/includes/linmath/float4x4.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test.dir/includes/linmath/float4x4.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/johan/Programming/bubba3d/Bubba-3D/includes/linmath/float4x4.cpp > CMakeFiles/test.dir/includes/linmath/float4x4.cpp.i

CMakeFiles/test.dir/includes/linmath/float4x4.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test.dir/includes/linmath/float4x4.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/johan/Programming/bubba3d/Bubba-3D/includes/linmath/float4x4.cpp -o CMakeFiles/test.dir/includes/linmath/float4x4.cpp.s

CMakeFiles/test.dir/includes/linmath/float4x4.cpp.o.requires:
.PHONY : CMakeFiles/test.dir/includes/linmath/float4x4.cpp.o.requires

CMakeFiles/test.dir/includes/linmath/float4x4.cpp.o.provides: CMakeFiles/test.dir/includes/linmath/float4x4.cpp.o.requires
	$(MAKE) -f CMakeFiles/test.dir/build.make CMakeFiles/test.dir/includes/linmath/float4x4.cpp.o.provides.build
.PHONY : CMakeFiles/test.dir/includes/linmath/float4x4.cpp.o.provides

CMakeFiles/test.dir/includes/linmath/float4x4.cpp.o.provides.build: CMakeFiles/test.dir/includes/linmath/float4x4.cpp.o

CMakeFiles/test.dir/includes/linmath/int2.cpp.o: CMakeFiles/test.dir/flags.make
CMakeFiles/test.dir/includes/linmath/int2.cpp.o: ../includes/linmath/int2.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/johan/Programming/bubba3d/Bubba-3D/build/CMakeFiles $(CMAKE_PROGRESS_11)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/test.dir/includes/linmath/int2.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/test.dir/includes/linmath/int2.cpp.o -c /home/johan/Programming/bubba3d/Bubba-3D/includes/linmath/int2.cpp

CMakeFiles/test.dir/includes/linmath/int2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test.dir/includes/linmath/int2.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/johan/Programming/bubba3d/Bubba-3D/includes/linmath/int2.cpp > CMakeFiles/test.dir/includes/linmath/int2.cpp.i

CMakeFiles/test.dir/includes/linmath/int2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test.dir/includes/linmath/int2.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/johan/Programming/bubba3d/Bubba-3D/includes/linmath/int2.cpp -o CMakeFiles/test.dir/includes/linmath/int2.cpp.s

CMakeFiles/test.dir/includes/linmath/int2.cpp.o.requires:
.PHONY : CMakeFiles/test.dir/includes/linmath/int2.cpp.o.requires

CMakeFiles/test.dir/includes/linmath/int2.cpp.o.provides: CMakeFiles/test.dir/includes/linmath/int2.cpp.o.requires
	$(MAKE) -f CMakeFiles/test.dir/build.make CMakeFiles/test.dir/includes/linmath/int2.cpp.o.provides.build
.PHONY : CMakeFiles/test.dir/includes/linmath/int2.cpp.o.provides

CMakeFiles/test.dir/includes/linmath/int2.cpp.o.provides.build: CMakeFiles/test.dir/includes/linmath/int2.cpp.o

CMakeFiles/test.dir/includes/linmath/float3x3.cpp.o: CMakeFiles/test.dir/flags.make
CMakeFiles/test.dir/includes/linmath/float3x3.cpp.o: ../includes/linmath/float3x3.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/johan/Programming/bubba3d/Bubba-3D/build/CMakeFiles $(CMAKE_PROGRESS_12)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/test.dir/includes/linmath/float3x3.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/test.dir/includes/linmath/float3x3.cpp.o -c /home/johan/Programming/bubba3d/Bubba-3D/includes/linmath/float3x3.cpp

CMakeFiles/test.dir/includes/linmath/float3x3.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test.dir/includes/linmath/float3x3.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/johan/Programming/bubba3d/Bubba-3D/includes/linmath/float3x3.cpp > CMakeFiles/test.dir/includes/linmath/float3x3.cpp.i

CMakeFiles/test.dir/includes/linmath/float3x3.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test.dir/includes/linmath/float3x3.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/johan/Programming/bubba3d/Bubba-3D/includes/linmath/float3x3.cpp -o CMakeFiles/test.dir/includes/linmath/float3x3.cpp.s

CMakeFiles/test.dir/includes/linmath/float3x3.cpp.o.requires:
.PHONY : CMakeFiles/test.dir/includes/linmath/float3x3.cpp.o.requires

CMakeFiles/test.dir/includes/linmath/float3x3.cpp.o.provides: CMakeFiles/test.dir/includes/linmath/float3x3.cpp.o.requires
	$(MAKE) -f CMakeFiles/test.dir/build.make CMakeFiles/test.dir/includes/linmath/float3x3.cpp.o.provides.build
.PHONY : CMakeFiles/test.dir/includes/linmath/float3x3.cpp.o.provides

CMakeFiles/test.dir/includes/linmath/float3x3.cpp.o.provides.build: CMakeFiles/test.dir/includes/linmath/float3x3.cpp.o

CMakeFiles/test.dir/includes/glutil/glutil.cpp.o: CMakeFiles/test.dir/flags.make
CMakeFiles/test.dir/includes/glutil/glutil.cpp.o: ../includes/glutil/glutil.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/johan/Programming/bubba3d/Bubba-3D/build/CMakeFiles $(CMAKE_PROGRESS_13)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/test.dir/includes/glutil/glutil.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/test.dir/includes/glutil/glutil.cpp.o -c /home/johan/Programming/bubba3d/Bubba-3D/includes/glutil/glutil.cpp

CMakeFiles/test.dir/includes/glutil/glutil.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test.dir/includes/glutil/glutil.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/johan/Programming/bubba3d/Bubba-3D/includes/glutil/glutil.cpp > CMakeFiles/test.dir/includes/glutil/glutil.cpp.i

CMakeFiles/test.dir/includes/glutil/glutil.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test.dir/includes/glutil/glutil.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/johan/Programming/bubba3d/Bubba-3D/includes/glutil/glutil.cpp -o CMakeFiles/test.dir/includes/glutil/glutil.cpp.s

CMakeFiles/test.dir/includes/glutil/glutil.cpp.o.requires:
.PHONY : CMakeFiles/test.dir/includes/glutil/glutil.cpp.o.requires

CMakeFiles/test.dir/includes/glutil/glutil.cpp.o.provides: CMakeFiles/test.dir/includes/glutil/glutil.cpp.o.requires
	$(MAKE) -f CMakeFiles/test.dir/build.make CMakeFiles/test.dir/includes/glutil/glutil.cpp.o.provides.build
.PHONY : CMakeFiles/test.dir/includes/glutil/glutil.cpp.o.provides

CMakeFiles/test.dir/includes/glutil/glutil.cpp.o.provides.build: CMakeFiles/test.dir/includes/glutil/glutil.cpp.o

# Object files for target test
test_OBJECTS = \
"CMakeFiles/test.dir/src/test.cpp.o" \
"CMakeFiles/test.dir/src/objects/Scene.cpp.o" \
"CMakeFiles/test.dir/src/logging/Logger.cpp.o" \
"CMakeFiles/test.dir/includes/linmath/float2.cpp.o" \
"CMakeFiles/test.dir/includes/linmath/float4.cpp.o" \
"CMakeFiles/test.dir/includes/linmath/int4.cpp.o" \
"CMakeFiles/test.dir/includes/linmath/Quaternion.cpp.o" \
"CMakeFiles/test.dir/includes/linmath/int3.cpp.o" \
"CMakeFiles/test.dir/includes/linmath/float3.cpp.o" \
"CMakeFiles/test.dir/includes/linmath/float4x4.cpp.o" \
"CMakeFiles/test.dir/includes/linmath/int2.cpp.o" \
"CMakeFiles/test.dir/includes/linmath/float3x3.cpp.o" \
"CMakeFiles/test.dir/includes/glutil/glutil.cpp.o"

# External object files for target test
test_EXTERNAL_OBJECTS =

test: CMakeFiles/test.dir/src/test.cpp.o
test: CMakeFiles/test.dir/src/objects/Scene.cpp.o
test: CMakeFiles/test.dir/src/logging/Logger.cpp.o
test: CMakeFiles/test.dir/includes/linmath/float2.cpp.o
test: CMakeFiles/test.dir/includes/linmath/float4.cpp.o
test: CMakeFiles/test.dir/includes/linmath/int4.cpp.o
test: CMakeFiles/test.dir/includes/linmath/Quaternion.cpp.o
test: CMakeFiles/test.dir/includes/linmath/int3.cpp.o
test: CMakeFiles/test.dir/includes/linmath/float3.cpp.o
test: CMakeFiles/test.dir/includes/linmath/float4x4.cpp.o
test: CMakeFiles/test.dir/includes/linmath/int2.cpp.o
test: CMakeFiles/test.dir/includes/linmath/float3x3.cpp.o
test: CMakeFiles/test.dir/includes/glutil/glutil.cpp.o
test: CMakeFiles/test.dir/build.make
test: /usr/lib/x86_64-linux-gnu/libGLU.so
test: /usr/lib/x86_64-linux-gnu/libGL.so
test: /usr/lib/x86_64-linux-gnu/libSM.so
test: /usr/lib/x86_64-linux-gnu/libICE.so
test: /usr/lib/x86_64-linux-gnu/libX11.so
test: /usr/lib/x86_64-linux-gnu/libXext.so
test: /usr/lib/x86_64-linux-gnu/libglut.so
test: /usr/lib/x86_64-linux-gnu/libXmu.so
test: /usr/lib/x86_64-linux-gnu/libXi.so
test: /usr/lib/x86_64-linux-gnu/libGLEW.so
test: CMakeFiles/test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/test.dir/build: test
.PHONY : CMakeFiles/test.dir/build

CMakeFiles/test.dir/requires: CMakeFiles/test.dir/src/test.cpp.o.requires
CMakeFiles/test.dir/requires: CMakeFiles/test.dir/src/objects/Scene.cpp.o.requires
CMakeFiles/test.dir/requires: CMakeFiles/test.dir/src/logging/Logger.cpp.o.requires
CMakeFiles/test.dir/requires: CMakeFiles/test.dir/includes/linmath/float2.cpp.o.requires
CMakeFiles/test.dir/requires: CMakeFiles/test.dir/includes/linmath/float4.cpp.o.requires
CMakeFiles/test.dir/requires: CMakeFiles/test.dir/includes/linmath/int4.cpp.o.requires
CMakeFiles/test.dir/requires: CMakeFiles/test.dir/includes/linmath/Quaternion.cpp.o.requires
CMakeFiles/test.dir/requires: CMakeFiles/test.dir/includes/linmath/int3.cpp.o.requires
CMakeFiles/test.dir/requires: CMakeFiles/test.dir/includes/linmath/float3.cpp.o.requires
CMakeFiles/test.dir/requires: CMakeFiles/test.dir/includes/linmath/float4x4.cpp.o.requires
CMakeFiles/test.dir/requires: CMakeFiles/test.dir/includes/linmath/int2.cpp.o.requires
CMakeFiles/test.dir/requires: CMakeFiles/test.dir/includes/linmath/float3x3.cpp.o.requires
CMakeFiles/test.dir/requires: CMakeFiles/test.dir/includes/glutil/glutil.cpp.o.requires
.PHONY : CMakeFiles/test.dir/requires

CMakeFiles/test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test.dir/clean

CMakeFiles/test.dir/depend:
	cd /home/johan/Programming/bubba3d/Bubba-3D/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/johan/Programming/bubba3d/Bubba-3D /home/johan/Programming/bubba3d/Bubba-3D /home/johan/Programming/bubba3d/Bubba-3D/build /home/johan/Programming/bubba3d/Bubba-3D/build /home/johan/Programming/bubba3d/Bubba-3D/build/CMakeFiles/test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/test.dir/depend
