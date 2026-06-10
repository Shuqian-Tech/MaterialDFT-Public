# 与 VASP 6.5.1 的结果对比

## VASP `MPI 32 ranks`

- VASP 版本：6.5.1
- MPI ranks：32
- 状态：segfault，`rc=139`

VASP `MPI 32 ranks` 在该输入上没有产生可比较的正常完成结果。崩溃前 `OSZICAR` 中最后一个 ionic summary 为：

```text
19 F= -.30044523E+02 E0= -.30044967E+02  d E =-.197963E+03
```

stderr 中记录了 rank 进程收到 `SIGSEGV`。公开摘要中不保留本地机器名，关键信息为：

```text
mpirun noticed that one MPI rank exited on signal 11 (Segmentation fault).
```

## VASP `np16` 参考

- VASP 版本：6.5.1
- MPI ranks：16
- 状态：正常完成
- ionic steps：9

VASP `np16` `OSZICAR` 末行：

```text
9 F= -.49101026E+02 E0= -.49095758E+02  d E =-.217020E+03
```

## MaterialDFT

- MPI ranks：32
- 状态：正常完成
- ionic steps：9

MaterialDFT `OSZICAR` 末行：

```text
9 F= -.49101037E+02 E0= -.49095763E+02  d E =-.217020E+03
```

## 运行时间

| 程序 | MPI ranks | 状态 | 本地单次实测 wall time |
| --- | ---: | --- | ---: |
| VASP 6.5.1 | 32 | segfault，`rc=139` | `32 s` |
| VASP 6.5.1 | 16 | 正常完成 | `9 s` |
| MaterialDFT | 32 | 正常完成 | `286 s` |

VASP `MPI 32 ranks` 没有产生可比较的正常完成结果，因此数值对比使用 VASP `np16` 的正常完成结果作为参考。

## 对比结论

- VASP `MPI 32 ranks`：segfault，`rc=139`。
- VASP `np16`：正常完成，`9` 个 ionic steps。
- MaterialDFT `MPI 32 ranks`：正常完成，`9` 个 ionic steps。
- MaterialDFT `MPI 32 ranks` vs VASP `np16`：`F` 差异约 `1.1e-5 eV`，`E0` 差异约 `5e-6 eV`。

该 case 展示了 MaterialDFT 在一个压缩 Re bulk relaxation 输入上与可完成的 VASP 低 rank 结果高度接近，同时在本地 `MPI 32 ranks` 高并行运行中完成了 VASP `MPI 32 ranks` segfault 的计算。

## 迭代步数对比

该 case 保留历史报错边界证据，本轮未形成新的双侧收敛迭代步数对比。
