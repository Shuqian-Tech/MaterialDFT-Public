# 构建信息

打包日期：2026-06-07

公开包版本：

- 版本：2026-06-07 Linux x86_64 公开包
- 内容：MaterialDFT Linux 二进制程序、使用文档、示例输入与本地对比结果摘要

Linux 二进制程序：

- 路径：`bin/linux-x86_64/materialdft`
- 程序名：`materialdft`
- 构建配置：Linux x86_64 MPI release 构建
- 二进制格式：Linux x86_64 ELF，动态链接
- SHA256: `3db1c9bc79c90152b0f1dc90f4cb922e23885a2dbc48feecc5d43d9b1cd77d2d`

构建机器上观察到的主要运行时依赖：

- OpenMPI (`libmpi.so.40`, `libmpi_cxx.so.40`)
- FFTW3 (`libfftw3.so.3`, `libfftw3_threads.so.3`)
- BLAS/LAPACK/OpenBLAS
- GNU OpenMP 运行时 (`libgomp.so.1`)
- GNU C++ 运行时 (`libstdc++.so.6`)

当前 Linux 二进制程序不是静态链接。目标机器需要提供兼容的运行时库。
