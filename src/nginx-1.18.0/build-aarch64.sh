#!/bin/bash

# to run this script, issue 'source build.sh' command
# clang -S -c -Xclang -disable-O0-optnone -fno-discard-value-names -emit-llvm rule7.c -o rule7.ll 
# opt-10 -S -mem2reg rule7.ll -o rule7.opt

source /home/salman/DPP/wp-llvm/bin/activate
export LLVM_COMPILER=clang
LLVM_COMPILER_PATH=/home/salman/DPP/dpp-llvm/build/bin
export BINUTILS_TARGET_PREFIX=aarch64-linux-gnu
CC=wllvm ./configure 
#--with-cc-opt="--target=aarch64-linux-gnu -march=armv8.3-a --sysroot=/home/salman/DPP/sysroot-glibc --gcc-toolchain=/home/salman/DPP/linarogcc"
make
extract-bc -l /usr/bin/llvm-link-10 objs/nginx
opt-10 --march=aarch64 -S -mem2reg objs/nginx.bc -o objs/nginx.opt
deactivate
