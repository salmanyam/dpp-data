#!/bin/bash

PRG_NAME=$1
LLVM_OPT=/home/danfeng/DPP/dpp-llvm/build/bin/opt

$LLVM_OPT -S -passes="print-dpp-global" --dpp-rule="all" --dpp-output="/home/danfeng/DPP/dpp-data/logs/$PRG_NAME.txt" -disable-output < /home/danfeng/DPP/dpp-data/IRx86/$PRG_NAME.opt
