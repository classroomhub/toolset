project("diff")
cmake_minimum_required(VERSION 3.0)

add_subdirectory("diff")

include_directories("diff")
add_executable(main "main.cpp")
target_link_libraries(main diff)