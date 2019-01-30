#!/bin/sh
parent_dir=$(pwd)
tslib_dir=$parent_dir/mytslib
prefix_dir=$parent_dir/qt-arm-lib
cp -rf qtbase $1/
cd $1
#make clean
./configure --prefix=$prefix_dir  \
-v \
-opensource \
-release \
-confirm-license \
-xplatform linux-arm-gnueabihf-g++ \
-shared \
-optimized-qmake \
-pch \
-qt-zlib \
-no-gif \
-qt-libjpeg \
-qt-libpng \
-no-opengl \
-no-cups \
-no-glib \
-no-dbus \
-no-rpath \
-no-sse2 -no-sse3 -no-ssse3 -no-sse4.1 -no-sse4.2 \
-no-avx \
-no-openssl \
-no-separate-debug-info \
-no-webengine
-tslib \
-I$tslib_dir/include -L$tslib_dir/lib \
-qt-freetype \
-nomake tools \
-nomake tests \
-nomake examples 

make && make install
