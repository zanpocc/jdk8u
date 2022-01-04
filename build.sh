#!/bin/bash
source ./env.bash
./configure clean
#./configure OBJCOPY=gobjcopy --with-debug-level=slowdebug --enable-debug-symbols ZIP_DEBUGINFO_FILES=0
./configure --with-debug-level=slowdebug --with-native-debug-symbols=internal --disable-zip-debug-info --enable-debug-symbols --with-jvm-variants=server --with-target-bits=64 --with-freetype-include=/usr/include/freetype2 --with-freetype-lib=/lib64
make

# 搜索库文件命令
#ldconfig -p | grep libfreetype

# 使用与平台无关的解释器
# ./configure -zero --with-debug-level=slowdebug --enable-debug-symbols --with-jvm-variants=server --with-target-bits=64 --with-freetype-include=/usr/include/freetype2 --with-freetype-lib=/usr/lib/x86_64-linux-gnu

# 解压符号文件
#rm -rf ./build/linux-x86_64-normal-server-slowdebug/jdk/lib/amd64/server/libjvm.debuginfo
#unzip ./build/linux-x86_64-normal-server-slowdebug/jdk/lib/amd64/server/libjvm.diz -d ./build/linux-x86_64-normal-server-slowdebug/jdk/lib/amd64/server