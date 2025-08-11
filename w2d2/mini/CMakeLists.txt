cmake_minimum_required(VERSION 3.20)

project(mini)

set(CMAKE_CXX_STANDARD 20)

file(GLOB_RECURSE LIB_SRCS "${CMAKE_SOURCE_DIR}/lib/*.cc")

add_library(mini SHARED ${LIB_SRCS})


file(GLOB_RECURSE DRIVER_SRCS "${CMAKE_SOURCE_DIR}/driver/*.cc")

add_executable(main ${DRIVER_SRCS})

target_include_directories(main PRIVATE "${CMAKE_SOURCE_DIR}/include")
target_link_libraries(main mini)
