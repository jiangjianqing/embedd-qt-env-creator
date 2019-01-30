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
