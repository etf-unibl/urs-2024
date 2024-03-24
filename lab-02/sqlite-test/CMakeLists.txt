cmake_minimum_required(VERSION 3.0)
project(sqlite-test)

include("../toolchains/arm_cortex_a9.cmake")

find_package(SQLite3 REQUIRED)

add_executable(sqlite-test sqlite-test.c)

target_link_libraries(sqlite-test SQLite::SQLite3)
