#!/bin/bash

# to run this script, issue 'source build.sh' command
# clang -S -c -Xclang -disable-O0-optnone -fno-discard-value-names -emit-llvm rule7.c -o rule7.ll 
# opt-10 -S -mem2reg rule7.ll -o rule7.opt

source /home/salman/DPP/wp-llvm/bin/activate
export LLVM_COMPILER=clang
CC=wllvm  ./configure
make
extract-bc -l /usr/bin/llvm-link-10 ./bin/ftpd
opt-10 --march=aarch64 -S -mem2reg ./bin/ftpd.bc -o ./bin/ftpd.opt
deactivate
