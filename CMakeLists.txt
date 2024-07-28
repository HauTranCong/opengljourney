cmake_minimum_required(VERSION 3.1.0)

project(LearnOpenGL)

add_subdirectory(glad) 
add_subdirectory(glfw) 

include_directories(
    ${CMAKE_CURRENT_SOURCE_DIR}
    ${CMAKE_CURRENT_SOURCE_DIR}/glm
    ${CMAKE_CURRENT_SOURCE_DIR}/glad/include
    ${CMAKE_CURRENT_SOURCE_DIR}/glfw/include
)

if(_LINUX_)
    link_libraries(
        GLU 
        GL 
        Xrandr 
        Xxf86vm 
        Xi 
        Xinerama 
        X11
        pthread 
        rt 
        dl
    )
endif()

add_subdirectory(0.HelloWindow)
add_subdirectory(1.HelloTriangle)
add_subdirectory(2.Shaders)
add_subdirectory(3.Textures)
add_subdirectory(4.Transformations)