# MaterialDFT 二进制程序

本目录通过 `bin/materialdft` 提供统一公开入口。

当前包含：

- `linux-x86_64/materialdft`：Linux x86_64 动态链接 MPI 构建。

`bin/materialdft` 是公开入口脚本，会根据平台选择实际二进制程序，并自动设置当前 Linux 二进制程序所需的 MPI 默认参数。

预留平台目录：

- `macos-arm64/materialdft`
- `macos-x86_64/materialdft`

Linux 二进制程序不能直接在 macOS 上运行。macOS 版本需要在 macOS 上单独构建，并放入对应平台目录。
