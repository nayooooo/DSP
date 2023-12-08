cmake_minimum_required( VERSION 3.0.0 )
project( 2python2xls VERSION 1.0.0 )
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)

set( SRC_LIST main.c )
set( SRC ${SRC_LIST} )
include_directories( ${PROJECT_SOURCE_DIR} )
include_directories( ${PROJECT_SOURCE_DIR}/../../src/include )

set(Python3_EXECUTABLE "D:/ProgramData/Anaconda3/python.exe")
find_package(Python3 REQUIRED COMPONENTS Interpreter)
# set ( Python3_FOUND TRUE )
# set ( Python3DIR "D:/ProgramData/Anaconda3/envs/python311" )
# set ( Python3_INCLUDE_DIRS "${Python3DIR}/include" )
# set ( Python3_LIBRARIES "${Python3DIR}/libs/python311.lib" )
# list ( APPEND Python3_LIBRARIES "${Python3DIR}/Lib/site-packages/pandas" )

message ( STATUS "Python3_FOUND = ${Python3_FOUND} " )
message ( STATUS "Python3_INCLUDE_DIRS = ${Python3_INCLUDE_DIRS} " )
message ( STATUS "Python3_LIBRARIES = ${Python3_LIBRARIES} " )

if ( ${Python3_FOUND} )
    include_directories( ${Python3_INCLUDE_DIRS} )
else ()
    message( FATAL_ERROR "Python3 not found, please install it." )
endif ()

add_executable( ${PROJECT_NAME} ${SRC} )
target_include_directories( ${PROJECT_NAME}
    PRIVATE
        ${Python3_INCLUDE_DIRS}
)
target_link_libraries( ${PROJECT_NAME}
    PRIVATE
        ${PROJECT_SOURCE_DIR}/../../lib/fft.a
        ${Python3_LIBRARIES}
)
