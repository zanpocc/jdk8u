gdbserver :1234 ./build/linux-x86_64-normal-server-slowdebug/jdk/bin/java PlainNioServer



# -XX:+TraceBytecodes --XX:StopInterpreterAt=<n>
# 遇到序号为<n>的字节码指令时,中断程序执行

# 检测是否存在符号
#gdb ./build/linux-x86_64-normal-server-slowdebug/jdk/lib/amd64/server/libjvm.so -ex 'info address UseG1GC'
# 查看debuginfo文件格式
# readelf xxx