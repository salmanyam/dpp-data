#!/bin/bash

# to run this script, issue 'source build.sh' command
# clang -S -c -Xclang -disable-O0-optnone -fno-discard-value-names -emit-llvm rule7.c -o rule7.ll 
# opt-10 -S -mem2reg rule7.ll -o rule7.opt

source /home/salman/DPP/wp-llvm/bin/activate
LLVM_COMPILER=clang
INSTALL_DIR=/home/salman/DPP/data/installs/proftpd-1.3.0
LLVM_COMPILER_PATH=/home/salman/DPP/dpp-llvm/build/bin
WLLVM_CONFIGURE_ONLY=1
CC=wllvm ./configure --prefix=${INSTALL_DIR}
make
make install
extract-bc -l ${LLVM_COMPILER_PATH}/llvm-link ${INSTALL_DIR}/sbin/proftpd
${LLVM_COMPILER_PATH}/opt -S -mem2reg ${INSTALL_DIR}/sbin/proftpd.bc -o ${INSTALL_DIR}/sbin/proftpd.opt
deactivate
