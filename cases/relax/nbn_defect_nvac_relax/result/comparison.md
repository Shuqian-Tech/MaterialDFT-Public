# MaterialDFT 与 VASP 6.5.1 的结果对比

## 结果摘要

| 程序 | 状态 | ionic steps | electronic iterations | per-ionic electronic iterations | time |
| --- | --- | ---: | ---: | --- | ---: |
| MaterialDFT | 正常完成 | 5 | 47 | `19, 6, 7, 7, 8` | `29 s` |
| VASP 6.5.1 | 正常完成 | 5 | 47 | `19, 6, 7, 7, 8` | `20 s` |

## SCF 收敛判据

| 程序 | EDIFF | 最后 `DAV/RMM` 的 `|d eps|` | 判定 |
| --- | ---: | ---: | --- |
| MaterialDFT | `1.000e-05` | `6.604e-07` | 收敛 |
| VASP 6.5.1 | `1.000e-05` | `3.979e-07` | 收敛 |

## 最终电子能量误差

- 最后一个 `DAV/RMM` 能量差异：`1.288e-04 eV`
- `F` 差异：`1.290e-04 eV`
- `E0` 差异：`1.270e-04 eV`

## OSZICAR 末行

MaterialDFT：

```text
   5 F= -.69757336E+02 E0= -.69750236E+02  d E =-.249760E+00
```

VASP 6.5.1：

```text
   5 F= -.69757207E+02 E0= -.69750109E+02  d E =-.249630E+00
```

## 对比结论

- 收敛状态：MaterialDFT 为 `正常完成`，VASP 为 `正常完成`。
- 迭代步数：ionic 5/5，electronic 47/47 (delta +0)。
- 数值差异：最后电子能量差异 `1.288e-04 eV`；`F` 差异 `1.290e-04 eV`；`E0` 差异 `1.270e-04 eV`。

本文件记录同一输入在 MPI 32 ranks 下的结果；对于非完整收敛 case，仅作为程序行为和输出对比，不作为完整收敛精度声明。
