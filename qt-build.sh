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
-no-assimp \
-no-separate-debug-info \
-tslib \
-I$tslib_dir/include -L$tslib_dir/lib \
-qt-freetype \
-nomake tools \
-nomake tests \
-nomake examples  \
-no-opengl \
-no-dbus \
-no-qt3d-profile-jobs \
-no-qt3d-profile-gl \
-no-qt3d-simd \
-no-qt3d-render \
-no-qt3d-input \
-no-qt3d-logic \
-no-qt3d-extras \
-no-qt3d-animation \
-no-openssl -no-openvg -no-angle -no-icu -skip svg -skip xmlpatterns  -skip declarative -skip multimedia  -skip imageformats -skip quickcontrols -skip quickcontrols2 -skip translations -skip doc -skip graphicaleffects -skip qtwebengine -skip qtwebglplugin -skip qtwebsockets -skip qtwebview -skip qtserialbus -skip qtlocation  -skip qtscript -skip qtgamepad -skip qtandroidextras -skip qtscxml \
-recheck-all    


#make && make install
