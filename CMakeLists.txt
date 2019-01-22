cmake_minimum_required (VERSION 3.1.0)

# Project Info
set (project_name template)
set (sources
     main.cpp)

project(project_name CXX)

# Compilation Flags
add_definitions (-std=gnu++17)
set(CMAKE_CXX_FLAGS_DEBUG "-Wall -pedantic -g3 -O0")
set(CMAKE_CXX_FLAGS_RELEASE "-g0 -O3")

add_executable (${project_name} ${sources})
