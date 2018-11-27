cmake_minimum_required(VERSION 3.7.2)
project(hsvHelper)

find_package(OpenCV REQUIRED)

file(GLOB SOURCES "*.cpp")

add_executable(hsvHelper ${SOURCES})
target_link_libraries(hsvHelper ${OpenCV_LIBS})
