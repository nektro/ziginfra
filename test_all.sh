#!/bin/sh

set -ex

zig build test
zig build test -fqemu -Dtarget=x86_64-linux
zig build test -fqemu -Dtarget=aarch64-linux
zig build test -fqemu -Dtarget=riscv64-linux
zig build test -fqemu -Dtarget=powerpc64le-linux
zig build test -fqemu -Dtarget=mips64el-linux
