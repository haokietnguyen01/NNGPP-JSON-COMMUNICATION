add_executable(reqrep reqrep.cpp)
target_link_libraries(reqrep nngpp)
target_include_directories(reqrep PUBLIC ${CMAKE_SOURCE_DIR}/include)

# add_executable(async_server async/server.cpp)
# target_link_libraries(async_server nngpp)
# target_include_directories(async_server PUBLIC ${CMAKE_SOURCE_DIR}/include)

# add_executable(async_client async/client.cpp)
# target_link_libraries(async_client nngpp)
# target_include_directories(async_client PUBLIC ${CMAKE_SOURCE_DIR}/include)
