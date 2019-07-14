add_library(sha256 "sha256.cpp")
add_library(diff "diff.cpp")
target_link_libraries(diff sha256)