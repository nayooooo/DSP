cmake_minimum_required(VERSION 3.0.0)
project(fft VERSION 1.0.0
        DESCRIPTION "This library is used to provide FFT services."
        HOMEPAGE_URL "https://github.com/nayooooo/DSP.git"
        LANGUAGES "C")

file(GLOB SRC_LIST ${PROJECT_SOURCE_DIR}/*.c)
set(SRC ${SRC_LIST})
include_directories(${PROJECT_SOURCE_DIR}/include)

set(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/../lib)
add_library(${PROJECT_NAME} STATIC ${SRC_LIST})
set_target_properties(fft PROPERTIES PREFIX "")
