#!/bin/bash

EXEC_NAME=$1
MY_LLVM_DIR=$HOME/DPP/dpp-llvm/build/bin
MY_LLVM_LIB=$HOME/DPP/dpp-llvm/build/lib

extract-bc $EXEC_NAME
$MY_LLVM_DIR/opt -S -passes="asan-func-attr" < $EXEC_NAME.bc > $EXEC_NAME"_instr.bc"
$MY_LLVM_DIR/clang++ -O1 -g -fsanitize=address -x ir -c $EXEC_NAME"_instr.bc" -o $EXEC_NAME.o
$MY_LLVM_DIR/clang++ -O1 -g $EXEC_NAME.o -o $EXEC_NAME"_m" $MY_LLVM_LIB/clang/12.0.0/lib/linux/libclang_rt.asan-x86_64.so -rpath $MY_LLVM_LIB/clang/12.0.0/lib/linux/libclang_rt.asan-x86_64.so
rm $EXEC_NAME".bc"
rm $EXEC_NAME"_instr.bc"
rm $EXEC_NAME.o
