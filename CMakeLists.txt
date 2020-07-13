cmake_minimum_required(VERSION 2.6)
project(TestMPI)

find_package(MPI REQUIRED)

set(CMAKE_CXX_COMPILE_FLAGS ${CMAKE_CXX_COMPILE_FLAGS} ${MPI_COMPILE_FLAGS})
set(CMAKE_CXX_LINK_FLAGS "${CMAKE_CXX_LINK_FLAGS} ${MPI_LINK_FLAGS}")
include_directories(${MPI_INCLUDE_PATH})
link_libraries(${MPI_LIBRARIES})

set(CMAKE_CXX_STANDARD 14)

add_library(app app.cc)
add_executable(TestMPI main.cpp)
target_link_libraries(TestMPI app)
