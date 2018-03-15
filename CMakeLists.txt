cmake_minimum_required(VERSION 3.8)
project(Archivos)

set(CMAKE_CXX_STANDARD 11)

set(SOURCE_FILES main.cpp Notas.cpp Notas.h)
add_executable(Archivos ${SOURCE_FILES})