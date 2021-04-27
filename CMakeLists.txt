cmake_minimum_required(VERSION 3.19)
project(SyncSocket)

set(CMAKE_CXX_STANDARD 11)

set(Boost_INCLUDE_DIR /opt/homebrew/Cellar/boost/1.75.0_3/include/)
set(Boost_LIBRARY_DIR /opt/homebrew/Cellar/boost/1.75.0_3/lib/)
find_package(Boost COMPONENTS system filesystem REQUIRED)
include_directories(${Boost_INCLUDE_DIR})

add_executable(server server.cpp)
add_executable(client client.cpp)