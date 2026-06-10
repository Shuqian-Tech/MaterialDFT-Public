# 与 VASP 6.5.1 的结果对比

## VASP `MPI 32 ranks`

- VASP 版本：6.5.1
- MPI ranks：32
- 状态：`EDDDAV/ZHEGV` 报错，`rc=1`

VASP `MPI 32 ranks` 在该输入上没有产生可比较的正常完成结果。`OSZICAR` 中最后一个 ionic summary 为：

```text
1 F= 0.20711541E+03 E0= 0.20711550E+03  d E =0.207115E+03
```

stdout 中记录了 `EDDDAV/ZHEGV` 报错：

```text
Error EDDDAV: Call to ZHEGV failed. Returncode = 33 2 64
```

## VASP `np16` 参考

- VASP 版本：6.5.1
- MPI ranks：16
- 状态：正常完成
- ionic steps：30

VASP `np16` `OSZICAR` 末行：

```text
30 F= -.35294621E+02 E0= -.35292126E+02  d E =-.897973E-03
```

## MaterialDFT

- MPI ranks：32
- 状态：正常完成
- ionic steps：30

MaterialDFT `OSZICAR` 末行：

```text
30 F= -.35294617E+02 E0= -.35292122E+02  d E =-.868057E-03
```

## 运行时间

| 程序 | MPI ranks | 状态 | 本地单次实测 wall time |
| --- | ---: | --- | ---: |
| VASP 6.5.1 | 32 | `EDDDAV/ZHEGV` 报错，`rc=1` | `85 s` |
| VASP 6.5.1 | 16 | 正常完成 | `229 s` |
| MaterialDFT | 32 | 正常完成 | `655 s` |

VASP `MPI 32 ranks` 没有产生可比较的正常完成结果，因此数值对比使用 VASP `np16` 的正常完成结果作为参考。

## 对比结论

- VASP `MPI 32 ranks`：`EDDDAV/ZHEGV` 报错，`rc=1`。
- VASP `np16`：正常完成，`30` 个 ionic steps。
- MaterialDFT `MPI 32 ranks`：正常完成，`30` 个 ionic steps。
- MaterialDFT `MPI 32 ranks` vs VASP `np16`：`F` 差异约 `4e-6 eV`，`E0` 差异约 `4e-6 eV`。

该 case 展示了 MaterialDFT 在一个压缩 Ir dense-k relaxation 输入上与可完成的 VASP 低 rank 结果高度接近，同时在本地 `MPI 32 ranks` 高并行运行中完成了 VASP `MPI 32 ranks` 出现 `EDDDAV/ZHEGV` 报错 的计算。

## 迭代步数对比

该 case 保留历史报错边界证据，本轮未形成新的双侧收敛迭代步数对比。
