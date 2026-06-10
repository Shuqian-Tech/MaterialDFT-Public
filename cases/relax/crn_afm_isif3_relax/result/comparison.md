# MaterialDFT 与 VASP 6.5.1 的结果对比

## 结果摘要

| 程序 | 状态 | ionic steps | electronic iterations | per-ionic electronic iterations | time |
| --- | --- | ---: | ---: | --- | ---: |
| MaterialDFT | 正常完成 | 3 | 30 | `16, 8, 6` | `91 s` |
| VASP 6.5.1 | 正常完成 | 3 | 32 | `18, 9, 5` | `72 s` |

## SCF 收敛判据

| 程序 | EDIFF | 最后 `DAV/RMM` 的 `|d eps|` | 判定 |
| --- | ---: | ---: | --- |
| MaterialDFT | `1e-05` | `1.5431e-06` | 收敛 |
| VASP 6.5.1 | `1e-05` | `5.9558e-06` | 收敛 |

## 最终电子能量误差

- 最后一个 `DAV/RMM` 能量差异：`2.120e-05 eV`
- `F` 差异：`2.500e-05 eV`
- `E0` 差异：`2.000e-05 eV`

## OSZICAR 末行

MaterialDFT：

```text
   3 F= -.74402669E+02 E0= -.74401860E+02  d E =-.260314E-01  mag=    -0.0001
```

VASP 6.5.1：

```text
   3 F= -.74402694E+02 E0= -.74401880E+02  d E =-.260612E-01  mag=    -0.0001
```

## 对比结论

- 收敛状态：MaterialDFT 为 `正常完成`，VASP 为 `正常完成`。
- 迭代步数：ionic 3/3，electronic 30/32 (delta -2)。
- 数值差异：最后电子能量差异 `2.120e-05 eV`；`F` 差异 `2.500e-05 eV`；`E0` 差异 `2.000e-05 eV`。

本文件记录同一输入在 `MPI 32 ranks` 下的新跑结果；对于非完整收敛 case，仅作为程序行为和输出对比，不作为完整收敛精度声明。
