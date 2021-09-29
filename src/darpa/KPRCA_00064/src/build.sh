#!/bin/bash

# to run this script, issue 'source build.sh' command
# clang -S -c -Xclang -disable-O0-optnone -fno-discard-value-names -emit-llvm rule7.c -o rule7.ll 
# opt-10 -S -mem2reg rule7.ll -o rule7.opt

source /home/salman/DPP/wp-llvm/bin/activate
LLVM_COMPILER=clang
LLVM_COMPILER_PATH=/home/salman/DPP/dpp-llvm/build/bin
make
extract-bc -l ${LLVM_COMPILER_PATH}/llvm-link ./main
${LLVM_COMPILER_PATH}/opt -S -mem2reg ./main.bc -o ./main.opt
deactivate
