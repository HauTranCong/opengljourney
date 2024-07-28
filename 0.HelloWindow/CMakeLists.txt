cmake_minimum_required(VERSION 3.1)

project(hellowindow C CXX)

add_executable(${PROJECT_NAME}
    ${CMAKE_CURRENT_SOURCE_DIR}/../glad/src/glad.c
    main.cpp
)

target_link_libraries(${PROJECT_NAME}
    glfw 
)