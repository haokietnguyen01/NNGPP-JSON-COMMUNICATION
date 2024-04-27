cmake_minimum_required(VERSION 3.1)
project(request)

include(GNUInstallDirs)

# option(NNGPP_BUILD_DEMOS "build nngpp src" on)
set(CMAKE_CXX_STANDARD 14)

find_package(nng)

file(GLOB_RECURSE includes include/*.h)

add_library(nngpp INTERFACE)
target_include_directories(nngpp INTERFACE $<INSTALL_INTERFACE:${CMAKE_INSTALL_INCLUDEDIR}>)
target_link_libraries(nngpp INTERFACE nng::nng)

add_subdirectory(src)

install(TARGETS nngpp EXPORT nngpp-target)
install(DIRECTORY include/ DESTINATION ${CMAKE_INSTALL_INCLUDEDIR})
install(EXPORT nngpp-target DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/nngpp
    NAMESPACE nng:: FILE nngpp-config.cmake)