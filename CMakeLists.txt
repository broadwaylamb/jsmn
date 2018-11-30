cmake_minimum_required(VERSION 3.0.0)

project(jsmn)

set(ENABLE_SANITIZERS "-fsanitize=undefined,address")
set(CMAKE_C_FLAGS "${CMAKE_CXX_FLAGS} ${ENABLE_SANITIZERS}")
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} ${ENABLE_SANITIZERS}")
set(CMAKE_MODULE_LINKER_FLAGS "${CMAKE_MODULE_LINKER_FLAGS} ${ENABLE_SANITIZERS}")

add_executable(test_default test/tests.c jsmn.h)
add_executable(test_strict test/tests.c jsmn.h)
add_executable(test_links test/tests.c jsmn.h)
add_executable(test_strict_links test/tests.c jsmn.h)
add_executable(simple_example example/simple.c jsmn.h)
add_executable(jsondump example/jsondump.c jsmn.h)

target_compile_definitions(test_strict PRIVATE JSMN_STRICT=1)
target_compile_definitions(test_links PRIVATE JSMN_PARENT_LINKS=1)
target_compile_definitions(test_strict_links PRIVATE JSMN_STRICT=1 JSMN_PARENT_LINKS=1)
