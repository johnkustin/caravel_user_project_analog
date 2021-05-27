#!/bin/bash
unset LD_LIBRARY_PATH

export PDK_ROOT=$(pwd)/../pdks-caravel
export CARAVEL_ROOT=$(pwd)/caravel
export PRECHECK_ROOT=$(pwd)/../precheck
export OPENLANE_TAG=v0.15

export GCC_PATH=/tmp/kustinj/riscv-tools-install/bin/

# for glibcxx
module load innovus
module load base/rsg base/1.0 vcs
