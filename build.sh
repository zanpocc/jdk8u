#!/bin/bash
source ./env.bash
./configure clean
#./configure OBJCOPY=gobjcopy --with-debug-level=slowdebug --enable-debug-symbols ZIP_DEBUGINFO_FILES=0
./configure --with-debug-level=slowdebug --enable-debug-symbols --with-jvm-variants=server --with-target-bits=64 --with-freetype-include=/usr/include/freetype2 --with-freetype-lib=/usr/lib/x86_64-linux-gnu
# 使用与平台无关的解释器
# ./configure -zero --with-debug-level=slowdebug --enable-debug-symbols --with-jvm-variants=server --with-target-bits=64 --with-freetype-include=/usr/include/freetype2 --with-freetype-lib=/usr/lib/x86_64-linux-gnu
make
rm -rf ./build/linux-x86_64-normal-server-slowdebug/jdk/lib/amd64/server/libjvm.debuginfo
unzip ./build/linux-x86_64-normal-server-slowdebug/jdk/lib/amd64/server/libjvm.diz -d ./build/linux-x86_64-normal-server-slowdebug/jdk/lib/amd64/server