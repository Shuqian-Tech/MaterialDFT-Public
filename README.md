# MaterialDFT 公开评测包

MaterialDFT 是一个 C++ 实现，接受 VASP 风格输入文件：

- `POSCAR`
- `INCAR`
- `POTCAR`
- `KPOINTS`

这个目录用于提供可直接运行的二进制程序、教程和可复现实验材料。它不包含 MaterialDFT 源码。

## 当前二进制程序

当前第一版只包含 Linux x86_64 版本：

```bash
bin/materialdft POSCAR INCAR POTCAR KPOINTS OUT
```

MPI 运行请使用 `mpirun`，例如：

```bash
mpirun -np 32 bin/materialdft POSCAR INCAR POTCAR KPOINTS OUT
```

## POTCAR 说明

本包不分发 VASP 的 `POTCAR` 文件或赝势文件。使用者需要自行提供符合 VASP 格式的 `POTCAR`。

MaterialDFT 当前验证范围是 VASP 风格输入和 VASP 格式 `POTCAR`。其它赝势格式不在当前已验证范围内。

## 示例

当前包含两个最小示例：

- `examples/basic_static_rh`：Rh 体相 static 单点计算。
- `examples/basic_relax_rh`：Rh 体相 relaxation 计算。

运行前请把你自己的、符合 VASP 格式的 Rh `POTCAR` 放入对应示例的 `input/POTCAR`。示例目录中只提供 `POTCAR.PLACEHOLDER` 和简化后的 `POTCAR.meta.json`。

示例命令：

```bash
cd examples/basic_static_rh
cp /path/to/your/PBE/Rh/POTCAR input/POTCAR
mpirun -np 4 ../../bin/materialdft input/POSCAR input/INCAR input/POTCAR input/KPOINTS OUT
```

## 样例库

`cases/` 收录了更多 static 与 relaxation 输入，并包含 MaterialDFT 本地运行结果以及与 VASP 6.5.1 的对比摘要。

```bash
cd cases/static/lif_insulator_static
NP=32 POTCAR=/path/to/LiF/POTCAR ./run.sh
```

样例总览见 `cases/README.md`。每个 case 的详细 MaterialDFT 输出摘要和 VASP 对比见对应目录下的 `result/`。已有 case 的 `result/` 记录以对应 case README 和 comparison 文档为准；本地复现时建议使用对应 case 记录的 MPI 进程数，也可以通过 `NP` 覆盖运行。

当前样例库的公开覆盖范围和证据口径见 `docs/coverage.md`。

## 平台支持

当前包含：

- Linux x86_64

当前尚未包含：

- macOS arm64
- macOS x86_64

Linux 和 macOS 需要分别编译对应平台的二进制程序。当前包含的 Linux 二进制程序不能直接在 macOS 上运行。

## 证据范围

当前评测包用于展示：

- 对选定测试 case 的 VASP 风格输入兼容性。
- 对选定 static / relax 工作流输出 VASP 风格摘要。
- 在选定对比样例上与 VASP 结果接近。
- 在若干已记录的高 MPI 进程数 cases 中，VASP 6.5.1 失败，而 MaterialDFT 完成运行。

MaterialDFT 在当前支持的 static 与 relaxation 工作流范围内，已经经过大量 VASP-style cases 测试。我们观察到其数值结果与 VASP 6.5.1 高度接近，并且在若干高并行 MPI cases 中表现出良好的运行鲁棒性。对于少数 VASP 高进程数运行出现 ZHEGV、segfault 或 fatal error 的 cases，MaterialDFT 能够完成对应计算；在这些已验证 cases 上，MaterialDFT 表现出更强的运行鲁棒性。

我们不声称当前版本速度达到或超过 VASP。当前重点是行为接近性、static / relaxation 工作流支持范围，以及已验证 cases 上的运行鲁棒性证据。
