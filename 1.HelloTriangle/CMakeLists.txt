cmake_minimum_required(VERSION 3.1)

project(hellotriangle C CXX)

# global source file 
file(GLOB GLAD_SOURCE
    ${CMAKE_CURRENT_SOURCE_DIR}/../glad/src/glad.c
)

# Link libraries to all targets
link_libraries(
    glfw 
)

file(GLOB SOURCE_FILES *.cpp)

foreach(SOURCE_PATH ${SOURCE_FILES})
    get_filename_component(EXECUTABLE_NAME ${SOURCE_PATH} NAME_WE)
    # message(EXECUTABLE_NAME=${EXECUTABLE_NAME})
    add_executable(${EXECUTABLE_NAME} 
        ${GLAD_SOURCE}
        ${SOURCE_PATH}
    )
endforeach(SOURCE_PATH ${SOURCE_FILES})