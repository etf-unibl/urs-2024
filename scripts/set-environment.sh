#!/bin/bash

export PATH=${HOME}/x-tools/arm-etfbl-linux-gnueabihf/bin:$PATH
export CROSS_COMPILE=arm-linux-
export ARCH=arm
export SYSROOT=$(arm-linux-gcc -print-sysroot)

