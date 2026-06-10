# MaterialDFT 与 VASP 6.5.1 的结果对比

## 结果摘要

| 程序 | 状态 | ionic steps | electronic iterations | per-ionic electronic iterations | time |
| --- | --- | ---: | ---: | --- | ---: |
| MaterialDFT | 正常完成 | 5 | 33 | `12, 3, 5, 6, 7` | `30 s` |
| VASP 6.5.1 | 正常完成 | 5 | 32 | `12, 3, 5, 6, 6` | `17 s` |

## SCF 收敛判据

| 程序 | EDIFF | 最后 `DAV/RMM` 的 `|d eps|` | 判定 |
| --- | ---: | ---: | --- |
| MaterialDFT | `1.000e-05` | `9.111e-07` | 收敛 |
| VASP 6.5.1 | `1.000e-05` | `8.502e-06` | 收敛 |

## 最终电子能量误差

- 最后一个 `DAV/RMM` 能量差异：`4.972e-04 eV`
- `F` 差异：`4.970e-04 eV`
- `E0` 差异：`4.970e-04 eV`

## OSZICAR 末行

MaterialDFT：

```text
   5 F= -.19937533E+02 E0= -.19932715E+02  d E =-.703637E-01
```

VASP 6.5.1：

```text
   5 F= -.19938030E+02 E0= -.19933212E+02  d E =-.708596E-01
```

## 对比结论

- 收敛状态：MaterialDFT 为 `正常完成`，VASP 为 `正常完成`。
- 迭代步数：ionic 5/5，electronic 33/32 (delta +1)。
- 数值差异：最后电子能量差异 `4.972e-04 eV`；`F` 差异 `4.970e-04 eV`；`E0` 差异 `4.970e-04 eV`。

本文件记录同一输入在 MPI 32 ranks 下的结果；对于非完整收敛 case，仅作为程序行为和输出对比，不作为完整收敛精度声明。
