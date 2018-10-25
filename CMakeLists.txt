CMAKE_MINIMUM_REQUIRED(VERSION 3.0)
project(cpp_docker)

include_directories(include)

file(GLOB SOURCES "src/*.cc")

add_executable(cpp_docker ${SOURCES})
install (TARGETS cpp_docker DESTINATION bin)