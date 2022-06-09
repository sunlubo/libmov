#!/bin/bash

BUILD_PREFIX=build
INSTALL_PREFIX=output
MODE=Release

rm -rf $BUILD_PREFIX
rm -rf $INSTALL_PREFIX

cmake \
  -DCMAKE_INSTALL_PREFIX=$INSTALL_PREFIX \
  -DCMAKE_BUILD_TYPE=$MODE \
  -S. \
  -B$BUILD_PREFIX \
  -GNinja
cmake --build $BUILD_PREFIX --target install
