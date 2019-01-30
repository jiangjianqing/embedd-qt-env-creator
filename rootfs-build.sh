gcc_lib_dir="/opt/gcc-linaro-7.3.1-2018.05-x86_64_arm-linux-gnueabihf/arm-linux-gnueabihf/libc/usr/lib"
rootfs_dir="rootfs"
rm -rf $rootfs_dir
mkdir $rootfs_dir
#cp -rf -s $gcc_lib_dir $rootfs_dir/      #拷贝软连接，只能用于nfs下的rootfs
cp -rf -L $gcc_lib_dir $rootfs_dir/       #将文件都复制到指定目录  ,dereference!!!链接文件将会被目标文件代替
