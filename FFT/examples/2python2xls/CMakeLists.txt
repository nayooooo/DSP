cmake_minimum_required( VERSION 3.0.0 )
project( 2python2xls VERSION 1.0.0 )
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)

set( SRC_LIST main.c )
set( SRC ${SRC_LIST} )
include_directories( ${PROJECT_SOURCE_DIR} )
include_directories( ${PROJECT_SOURCE_DIR}/../../src/include )

set( Python3_EXECUTABLE "D:/ProgramData/Anaconda3/envs/python311/python.exe" )
find_package( Python3 REQUIRED COMPONENTS Interpreter Development )
message ( STATUS "Python3_FOUND = ${Python3_FOUND} " )
message ( STATUS "Python3_INCLUDE_DIRS = ${Python3_INCLUDE_DIRS} " )
message ( STATUS "Python3_LIBRARIES = ${Python3_LIBRARIES} " )

if ( ${Python3_FOUND} )
    include_directories( ${Python3_INCLUDE_DIRS} )
    set ( Python3_Pandas_LIBRARIES "${Python3_INCLUDE_DIRS}/../Lib/site-packages/pandas/_libs" )
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
link_directories ( ${Python3_Pandas_LIBRARIES} )
