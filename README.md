#编译tslib遇到的问题
fbutils.c:(.text+0xa20): undefined reference to `rpl_malloc'
解决办法：在./configure中加入ac_cv_func_malloc_0_nonnull=yes

#编译tslib
1、将tslib源码解压到当前目录,假定为：tslib-1.9
2、执行shell脚本
    ./tslib-build.sh tslib-1.9

#编译embedded-qt
1、将qt解压到当前目录，假定为: qt-everywhere-src-5.12.0
2、执行shell脚本
    ./qt-build.sh qt-everywhere-src-5.12.0

#编译qt遇到的问题
ERROR: Feature 'tslib' was enabled, but the pre-condition 'libs.tslib' failed.
解决办法：tslib和sqlite3要预先编译并指定路径或者配置末尾加上 -recheck-all 选项。

./configure 
-release 
-opengl es2 
-device linux-rasp-pi2-g++ 
-device-option CROSS_COMPILE=$TOOLCHAIN/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian/bin/arm-linux-gnueabihf- 
-sysroot $ROOTFS 
-prefix /usr/local/qt

这段描述说明要先制作rootfs!!!!
The most important parameters are -device and -sysroot. By specifying -sysroot, the include files and libraries used by configure's feature detection tests, as well as Qt itself, is taken from the specified location, instead of the host PC's standard locations. This means that installing development packages on the host machine has no relevance. For example, to get libinput support it is not sufficient or necessary to have the libinput development headers and libraries installed on the host environment. Instead, the headers and the libraries for the target architecture (e.g. ARM) must be present in the sysroot.
