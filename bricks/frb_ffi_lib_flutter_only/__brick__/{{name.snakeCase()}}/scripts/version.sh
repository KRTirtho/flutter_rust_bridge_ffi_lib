#!/bin/bash

CURR_VERSION={{name.snakeCase()}}-v`awk '/^version: /{print $2}' packages/{{name.snakeCase()}}/pubspec.yaml`

# iOS & macOS
APPLE_HEADER="release_tag_name = '$CURR_VERSION' # generated; do not edit"
sed -i.bak "1 s/.*/$APPLE_HEADER/" packages/{{name.snakeCase()}}/ios/{{name.snakeCase()}}.podspec
sed -i.bak "1 s/.*/$APPLE_HEADER/" packages/{{name.snakeCase()}}/macos/{{name.snakeCase()}}.podspec
rm packages/{{name.snakeCase()}}/macos/*.bak packages/{{name.snakeCase()}}/ios/*.bak

# CMake platforms (Linux, Windows, and Android)
CMAKE_HEADER="set(LibraryVersion \"$CURR_VERSION\") # generated; do not edit"
for CMAKE_PLATFORM in android linux windows
do
    sed -i.bak "1 s/.*/$CMAKE_HEADER/" packages/{{name.snakeCase()}}/$CMAKE_PLATFORM/CMakeLists.txt
    rm packages/{{name.snakeCase()}}/$CMAKE_PLATFORM/*.bak
done

git add packages/{{name.snakeCase()}}/
