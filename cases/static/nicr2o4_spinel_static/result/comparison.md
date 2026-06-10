# MaterialDFT 与 VASP 6.5.1 的结果对比

## 结果摘要

| 程序 | 状态 | ionic steps | electronic iterations | per-ionic electronic iterations | time |
| --- | --- | ---: | ---: | --- | ---: |
| MaterialDFT | 程序完成，非完整收敛 | 1 | 60 | `60` | `126 s` |
| VASP 6.5.1 | 程序完成，非完整收敛 | 1 | 60 | `60` | `29 s` |

## SCF 收敛判据

| 程序 | EDIFF | 最后 `DAV/RMM` 的 `|d eps|` | 判定 |
| --- | ---: | ---: | --- |
| MaterialDFT | `1.000e-05` | `0.004319` | 未完整收敛 |
| VASP 6.5.1 | `1.000e-05` | `0.0073519` | 未完整收敛 |

## 最终电子能量误差

- 最后一个 `DAV/RMM` 能量差异：`109.18 eV`
- `F` 差异：`109.18 eV`
- `E0` 差异：`109.166 eV`

## OSZICAR 末行

MaterialDFT：

```text
   1 F= 0.48095091E+02 E0= 0.48089901E+02  d E =0.155677E-01  mag=    11.2934
```

VASP 6.5.1：

```text
   1 F= -.61084696E+02 E0= -.61075734E+02  d E =-.268868E-01  mag=    11.8315
```

## 对比结论

- 收敛状态：MaterialDFT 为 `程序完成，非完整收敛`，VASP 为 `程序完成，非完整收敛`。
- 迭代步数：ionic 1/1，electronic 60/60 (delta +0)。
- 数值差异：最后电子能量差异 `109.18 eV`；`F` 差异 `109.18 eV`；`E0` 差异 `109.166 eV`。

本文件记录同一输入在 MPI 32 ranks 下的结果；对于非完整收敛 case，仅作为程序行为和输出对比，不作为完整收敛精度声明。
