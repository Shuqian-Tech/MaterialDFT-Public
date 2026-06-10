# MaterialDFT 与 VASP 6.5.1 的结果对比

## 结果摘要

| 程序 | 状态 | ionic steps | electronic iterations | per-ionic electronic iterations | time |
| --- | --- | ---: | ---: | --- | ---: |
| MaterialDFT | 正常完成 | 1 | 19 | `19` | `2.641 s` |
| VASP 6.5.1 | 正常完成 | 1 | 19 | `19` | `2.195 s` |

## SCF 收敛判据

| 程序 | EDIFF | 最后 `DAV/RMM` 的 `|d eps|` | 判定 |
| --- | ---: | ---: | --- |
| MaterialDFT | `1.000e-05` | `5.259e-08` | 收敛 |
| VASP 6.5.1 | `1.000e-05` | `6.587e-08` | 收敛 |

## 最终电子能量误差

- 最后一个 `DAV/RMM` 能量差异：`6.405e-07 eV`
- `F` 差异：`0 eV`
- `E0` 差异：`2.200e-05 eV`

## OSZICAR 末行

MaterialDFT：

```text
   1 F= -.13194011E+02 E0= -.13189327E+02  d E =-.140532E-01
```

VASP 6.5.1：

```text
   1 F= -.13194011E+02 E0= -.13189305E+02  d E =-.141157E-01
```

## 对比结论

- 收敛状态：MaterialDFT 为 `正常完成`，VASP 为 `正常完成`。
- 迭代步数：ionic 1/1，electronic 19/19 (delta +0)。
- 数值差异：最后电子能量差异 `6.405e-07 eV`；`F` 差异 `0 eV`；`E0` 差异 `2.200e-05 eV`。

本文件记录同一输入在 MPI 32 ranks 下的结果；对于非完整收敛 case，仅作为程序行为和输出对比，不作为完整收敛精度声明。
