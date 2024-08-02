cmake_minimum_required(VERSION 3.1)

project(hellowindow C CXX)

# global source file 
file(GLOB GLAD_SOURCE
    ${CMAKE_CURRENT_SOURCE_DIR}/../glad/src/glad.c
)


add_executable(${PROJECT_NAME}
    ${GLAD_SOURCE}
    main.cpp
)

target_link_libraries(${PROJECT_NAME}
    glfw 
)