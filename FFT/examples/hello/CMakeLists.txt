cmake_minimum_required(VERSION 3.0.0)
project(hello VERSION 1.0.0)

set(SRC_LIST main.c)
set(SRC ${SRC_LIST})
include_directories(${PROJECT_SOURCE_DIR})
include_directories(${PROJECT_SOURCE_DIR}/../../src/include)

add_executable(hello ${SRC})
target_link_libraries(hello
                        ${PROJECT_SOURCE_DIR}/../../lib/fft.a)
