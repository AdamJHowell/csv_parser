cmake_minimum_required(VERSION 3.10)
project(CSV_Parser C)

set(CMAKE_C_STANDARD 99)

add_executable(CSV_Parser src/main.c src/csvparser.c src/csvparser.h)
