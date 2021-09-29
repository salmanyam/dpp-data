#!/bin/bash

PRG_NAME=$1
LLVM_OPT=/home/salman/DPP/dpp-llvm/build/bin/opt

$LLVM_OPT -S -passes="print-dpp-global" --dpp-rule="all" --dpp-output="/home/salman/DPP/dpp-data/logs/$PRG_NAME.txt" -disable-output < /home/salman/DPP/dpp-data/IRx86/$PRG_NAME.opt
