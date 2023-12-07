cmake_minimum_required(VERSION 3.0.0)
project(2python2xls VERSION 1.0.0)

set(SRC_LIST main.c)
set(SRC ${SRC_LIST})
include_directories(${PROJECT_SOURCE_DIR})
include_directories(${PROJECT_SOURCE_DIR}/../../src/include)
set(PYTHON_DIR C:/Users/YEWAN/AppData/Local/Programs/Python/Python311)
include_directories(${PYTHON_DIR}/include)

add_executable(2python2xls ${SRC})
target_link_libraries(2python2xls
                        ${PROJECT_SOURCE_DIR}/../../lib/fft.a)
