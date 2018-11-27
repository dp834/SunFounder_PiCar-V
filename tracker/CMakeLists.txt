cmake_minimum_required(VERSION 3.7.2)
project(followColor)

include(FindPkgConfig)
pkg_check_modules(CURLPP REQUIRED curlpp)

include_directories(include)
find_package(OpenCV REQUIRED)
find_package(Eigen3 REQUIRED)


file(GLOB SOURCES "src/*.cpp")


add_executable(followColor ${SOURCES}) 
target_link_libraries(followColor ${OpenCV_LIBS} ${CURLPP_LDFLAGS} Eigen3::Eigen)
