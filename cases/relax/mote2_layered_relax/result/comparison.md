# MaterialDFT 与 VASP 6.5.1 的结果对比

## 结果摘要

| 程序 | 状态 | ionic steps | electronic iterations | per-ionic electronic iterations | time |
| --- | --- | ---: | ---: | --- | ---: |
| MaterialDFT | 正常完成 | 5 | 63 | `20, 8, 13, 11, 11` | `18 s` |
| VASP 6.5.1 | 正常完成 | 5 | 71 | `20, 16, 13, 11, 11` | `9.697 s` |

## SCF 收敛判据

| 程序 | EDIFF | 最后 `DAV/RMM` 的 `|d eps|` | 判定 |
| --- | ---: | ---: | --- |
| MaterialDFT | `1.000e-05` | `1.274e-07` | 收敛 |
| VASP 6.5.1 | `1.000e-05` | `1.284e-07` | 收敛 |

## 最终电子能量误差

- 最后一个 `DAV/RMM` 能量差异：`4.842e-04 eV`
- `F` 差异：`4.840e-04 eV`
- `E0` 差异：`4.840e-04 eV`

## OSZICAR 末行

MaterialDFT：

```text
   5 F= -.16748405E+02 E0= -.16749606E+02  d E =-.102441E+02
```

VASP 6.5.1：

```text
   5 F= -.16748889E+02 E0= -.16750090E+02  d E =-.102446E+02
```

## 对比结论

- 收敛状态：MaterialDFT 为 `正常完成`，VASP 为 `正常完成`。
- 迭代步数：ionic 5/5，electronic 63/71 (delta -8)。
- 数值差异：最后电子能量差异 `4.842e-04 eV`；`F` 差异 `4.840e-04 eV`；`E0` 差异 `4.840e-04 eV`。

本文件记录同一输入在 MPI 32 ranks 下的结果；对于非完整收敛 case，仅作为程序行为和输出对比，不作为完整收敛精度声明。
