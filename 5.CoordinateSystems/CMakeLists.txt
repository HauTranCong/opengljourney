cmake_minimum_required(VERSION 3.1)

project(hellotriangle C CXX)

# global source file 
file(GLOB GLAD_SOURCE
    ${CMAKE_CURRENT_SOURCE_DIR}/../glad/src/glad.c    
)

file(GLOB SHADER_SOURCE
    ${CMAKE_CURRENT_SOURCE_DIR}/Shader/Shader.cpp
)


include_directories(
    ${CMAKE_CURRENT_SOURCE_DIR}
)

# Link libraries to all targets
link_libraries(
    glfw 
)

file(GLOB SOURCE_FILES *.cpp)
file(GLOB GLSL_FILES Shader/*.glsl)

foreach(SOURCE_PATH ${SOURCE_FILES})
    get_filename_component(EXECUTABLE_NAME ${SOURCE_PATH} NAME_WE)
    # message(SOURCE_PATH=${SOURCE_PATH})
    foreach(GLSL_PATH ${GLSL_FILES})
        get_filename_component(GLSL_NAME ${GLSL_PATH} NAME_WE)
        string(REPLACE "VS" "" REMOVE_VS_FROM_GLSL_NAME ${GLSL_NAME})
        if(${REMOVE_VS_FROM_GLSL_NAME} STREQUAL ${EXECUTABLE_NAME})
            # message(D_GLSL_PATH=${CMAKE_CURRENT_SOURCE_DIR})
            ADD_DEFINITIONS(-D_GLSL_PATH_="${CMAKE_CURRENT_SOURCE_DIR}")
        endif()
    endforeach(GLSL_PATH ${GLSL_FILES})

    add_executable(${EXECUTABLE_NAME} 
        ${GLAD_SOURCE}
        ${SHADER_SOURCE}
        ${SOURCE_PATH}
    )
endforeach(SOURCE_PATH ${SOURCE_FILES})
