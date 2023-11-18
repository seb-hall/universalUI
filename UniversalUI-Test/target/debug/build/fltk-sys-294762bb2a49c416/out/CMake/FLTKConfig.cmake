#
# FLTKConfig.cmake - FLTK CMake configuration file for external projects.
#
# This file is generated by CMake and used to load FLTK's settings for
# an external project.
#
# It defines the following variables:
#
#  FLTK_VERSION           - FLTK version string ("x.y.z")
#  FLTK_INCLUDE_DIRS      - FLTK include directories
#  FLTK_LIBRARIES         - list of FLTK libraries built (not yet implemented)
#  FLTK_FLUID_EXECUTABLE  - needed by the function FLTK_RUN_FLUID
#                           (or the deprecated fltk_wrap_ui() CMake command)
#
# It defines the following deprecated variables for backwards
# compatibility (do not use for new projects):
#
#  FLTK_INCLUDE_DIR       - FLTK include directories (same as FLTK_INCLUDE_DIRS)
#
#  FLTK_USE_FILE          - previously used to set things up to use FLTK
#                         - deprecated since FLTK 1.3.4
#                         - will be removed in FLTK 1.4.0 or later
#
# Important note: FLTK's CMake build files are not yet complete and may be
# changed in future versions. This includes the list of defined variables
# above that may be changed if necessary.
#

set (FLTK_VERSION 1.4.0)

include (${CMAKE_CURRENT_LIST_DIR}/FLTK-Targets.cmake)

set (FLTK_INCLUDE_DIRS "C:/Users/sebam/Documents/UniversalUI/UniversalUI-Test/target/debug/build/fltk-sys-294762bb2a49c416/out/include")
set (FLTK_USE_FILE ${CMAKE_CURRENT_LIST_DIR}/UseFLTK.cmake)

# for compatibility with CMake's FindFLTK.cmake

set (FLTK_INCLUDE_DIR "${FLTK_INCLUDE_DIRS}")

if (CMAKE_CROSSCOMPILING)
  find_file(FLUID_PATH
    NAMES fluid fluid.exe
    PATHS ENV PATH
    NO_CMAKE_FIND_ROOT_PATH
  )
  add_executable(fluid IMPORTED)
  set_target_properties(fluid
    PROPERTIES IMPORTED_LOCATION ${FLUID_PATH}
  )
  set (FLTK_FLUID_EXECUTABLE ${FLUID_PATH})
else ()
  set (FLTK_FLUID_EXECUTABLE fluid)
endif (CMAKE_CROSSCOMPILING)
