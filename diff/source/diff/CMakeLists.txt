add_library(sha256 "sha256.cpp")
add_library(diff "diff.cpp")
target_link_libraries(diff sha256)

install (FILES diff.h DESTINATION include)
install (TARGETS diff
RUNTIME DESTINATION bin
LIBRARY DESTINATION lib
ARCHIVE DESTINATION lib
)