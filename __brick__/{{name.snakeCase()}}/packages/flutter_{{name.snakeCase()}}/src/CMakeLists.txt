# The Flutter tooling requires that developers have CMake 3.10 or later
# installed. You should not increase this version, as doing so will cause
# the plugin to fail to compile for some customers of the plugin.
cmake_minimum_required(VERSION 3.10)

project(flutter_{{name.snakeCase()}}_library VERSION 0.0.1 LANGUAGES C)

add_library(flutter_{{name.snakeCase()}} SHARED
  "flutter_{{name.snakeCase()}}.c"
)

set_target_properties(flutter_{{name.snakeCase()}} PROPERTIES
  PUBLIC_HEADER flutter_{{name.snakeCase()}}.h
  OUTPUT_NAME "flutter_{{name.snakeCase()}}"
)

target_compile_definitions(flutter_{{name.snakeCase()}} PUBLIC DART_SHARED_LIB)
