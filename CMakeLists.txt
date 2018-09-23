cmake_minimum_required(VERSION 3.12)
project(Disaster VERSION 1.0.0)

add_executable(Disaster main.cpp)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} ${CMAKE_CURRENT_SOURCE_DIR}/cmake)

find_package(SDL2)