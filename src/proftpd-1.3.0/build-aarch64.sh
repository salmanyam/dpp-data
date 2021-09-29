#!/bin/bash

# to run this script, issue 'source build.sh' command
# clang -S -c -Xclang -disable-O0-optnone -fno-discard-value-names -emit-llvm rule7.c -o rule7.ll 
# opt-10 -S -mem2reg rule7.ll -o rule7.opt

source /home/salman/DPP/wp-llvm/bin/activate
export LLVM_COMPILER=clang
export BINUTILS_TARGET_PREFIX=aarch64-linux-gnu
export WLLVM_CONFIGURE_ONLY=1
LLVM_COMPILER_PATH=/home/salman/DPP/dpp-llvm/build/bin
./configure --host=aarch64-unknown-linux-gnu \ CC=wllvm \
  CFLAGS="--target=aarch64-linux-gnu -march=armv8.3-a --sysroot=/home/salman/DPP/sysroot-glibc
  --gcc-toolchain=/home/salman/DPP/linarogcc" \ --prefix=/home/salman/DPP/data/installs/proftpd-1.3.0
  make
#make install
#extract-bc -l /usr/bin/llvm-link-10 /home/salman/DPP/data/installs/proftpd-1.3.0/sbin/proftpd
#opt-10 --march=aarch64 -S -mem2reg /home/salman/DPP/data/installs/proftpd-1.3.0/sbin/proftpd.bc -o /home/salman/DPP/data/installs/proftpd-1.3.0/sbin/proftpd.opt
deactivate
