#!/bin/bash
CUR_PATH=`pwd`
INSTALL_PATH=${CUR_PATH}/install_dir

mkdir -p ${CUR_PATH}/install_dir

cd qemu-8.0.5
# rm -rf build
# mkdir -p build
cd build

../configure --prefix=${INSTALL_PATH} --enable-trace-backends=log --enable-kvm --enable-debug \
--enable-debug-info --enable-vnc --target-list=x86_64-softmmu

make -j8

make install


