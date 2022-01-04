# 语言选项
export LANG=C
# 编译器
export CC=gcc
# 警告看作错误
export COMPILER_WARNINGS_FATAL=false
#export LFLAGS='-Xlinker -lstdc++ -s -g -DDEBUG'
# 使用CLANG
#export USE_CLANG=true
export LP64=1
# 64位
export ARCH_DATA_MODEL=64
# 运行自动下载依赖
export ALLOW_DOWNLOADS=true
# 四个线程并发编译
export HOTSPOT_BUILD_JOBS=8
# export ALT_PARALLEL_COMPILE_JOBS=4
# 不比较镜像差异
export SKIP_COMPARE_IMAGES=true
# 使用预编译头
export USE_PRECOMPILED_HEADER=true
# 增量编译
export INCREMENTAL_BUILD=true
# 需要编译的内容
export BUILD_LANGTOOLS=true
export BUILD_JAXP=false
export BUILD_JAXWS=false
export BUILD_CORBA=false
export BUILD_HOTSPOT=true
export BUILD_JDK=true
# 要编译的版本
export SKIP_DEBUG_BUILD=false
export SKIP_FASTDEBUG_BUILD=true
export DEBUG_NAME=debug

# 避免javaws和浏览器Java插件等的build
export BUILD_DEPLOY=false
# 不生成安装包
export BUILD_INSTALL=false

#包含全部的调试信息
export  ENABLE_FULL_DEBUG_SYMBOLS=1
#调试信息是否压缩，如果配置为１,libjvm.debuginfo会被压缩成libjvm.diz,将不能被debug。
export  ZIP_DEBUGINFO_FILES=0

# --disable-debug-symbols
# --disable-zip-debug-info


# 你的bootstrap jdk的地址，得比当前版本低
export JAVA_HOME=/root/jdk1.8.0_181

#export JAVA_TOOL_OPTIONS=-Dfile.encoding=UTF-8
# unset JAVA_HOME
unset CLASSPATH
# unset ALT_ environment



