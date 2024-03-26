add_subdirectory(test)
target_link_libraries(app PUBLIC test)
target_include_directories(app PUBLIC "${PROJECT_SOURCE_DIR}/test")