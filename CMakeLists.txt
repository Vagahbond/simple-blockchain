cmake_minimum_required(VERSION 3.2 FATAL_ERROR)
cmake_policy(VERSION 3.2)

project(simple-blockchain
    VERSION "1.0.0"
    DESCRIPTION "simple-blockchain"
)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
link_libraries(stdc++fs)




add_subdirectory("${CMAKE_CURRENT_SOURCE_DIR}/libs")

file(GLOB_RECURSE SOURCES "${CMAKE_CURRENT_SOURCE_DIR}/src/*.cpp")

add_executable(${PROJECT_NAME} ${SOURCES})

# set(OPENSSL_ROOT_DIR "/usr/include/openssl")
# set(OPENSSL_CRYPTO_LIBRARY "/usr/include/openssl/crypto.h")
set(OPENSSL_USE_STATIC_LIBS TRUE)
find_package(OpenSSL REQUIRED)
target_link_libraries(${PROJECT_NAME} OpenSSL::Crypto)


set(INCLUDES 
    "${CMAKE_CURRENT_SOURCE_DIR}/include"
    "${CMAKE_CURRENT_SOURCE_DIR}/src"

    ${DEPENDENCIES_HEADERS}
)




target_include_directories(${PROJECT_NAME} PUBLIC ${INCLUDES})