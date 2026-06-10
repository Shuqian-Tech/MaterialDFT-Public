# MaterialDFT 与 VASP 6.5.1 的结果对比

## 结果摘要

| 程序 | 状态 | ionic steps | electronic iterations | per-ionic electronic iterations | time |
| --- | --- | ---: | ---: | --- | ---: |
| MaterialDFT | 正常完成 | 5 | 50 | `10, 10, 10, 10, 10` | `95 s` |
| VASP 6.5.1 | 程序完成，非完整收敛 | 5 | 50 | `10, 10, 10, 10, 10` | `22 s` |

## SCF 收敛判据

| 程序 | EDIFF | 最后 `DAV/RMM` 的 `|d eps|` | 判定 |
| --- | ---: | ---: | --- |
| MaterialDFT | `1e-06` | `6.3575e-07` | 收敛 |
| VASP 6.5.1 | `1e-06` | `7.1418e-06` | 未完整收敛 |

## 最终电子能量误差

- 最后一个 `DAV/RMM` 能量差异：`0.00655 eV`
- `F` 差异：`0.00655 eV`
- `E0` 差异：`0.00655 eV`

## OSZICAR 末行

MaterialDFT：

```text
   5 F= -.14807138E+03 E0= -.14807138E+03  d E =-.202864E+01
```

VASP 6.5.1：

```text
   5 F= -.14806483E+03 E0= -.14806483E+03  d E =-.201809E+01
```

## 对比结论

- 收敛状态：MaterialDFT 为 `正常完成`，VASP 为 `程序完成，非完整收敛`。
- 迭代步数：ionic 5/5，electronic 50/50 (delta +0)。
- 数值差异：最后电子能量差异 `0.00655 eV`；`F` 差异 `0.00655 eV`；`E0` 差异 `0.00655 eV`。

本文件记录同一输入在 `MPI 32 ranks` 下的新跑结果；对于非完整收敛 case，仅作为程序行为和输出对比，不作为完整收敛精度声明。
