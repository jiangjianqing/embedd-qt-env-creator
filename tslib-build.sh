parent_dir=$(pwd)
prefix_dir=$parent_dir/mytslib
#if [ -d $prefix_dir]; then
#	echo "removing old mytslib dir!"
	rm -rf $prefix_dir
#fi
mkdir -p $prefix_dir
echo $parent_dir
cd $1
./autogen.sh
./configure \
--host=arm-linux \
ac_cv_func_malloc_0_nonnull=yes \
CC=arm-linux-gnueabihf-gcc \
CXX=arm-linux-gnueabihf-g++ \
--prefix=$prefix_dir
make && make install
