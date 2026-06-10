# MaterialDFT 与 VASP 6.5.1 的结果对比

## 结果摘要

| 程序 | 状态 | ionic steps | electronic iterations | per-ionic electronic iterations | time |
| --- | --- | ---: | ---: | --- | ---: |
| MaterialDFT | 程序完成，非完整收敛 | 1 | 60 | `60` | `146 s` |
| VASP 6.5.1 | 程序完成，非完整收敛 | 1 | 60 | `60` | `36 s` |

## SCF 收敛判据

| 程序 | EDIFF | 最后 `DAV/RMM` 的 `|d eps|` | 判定 |
| --- | ---: | ---: | --- |
| MaterialDFT | `1.000e-05` | `0.018706` | 未完整收敛 |
| VASP 6.5.1 | `1.000e-05` | `0.059898` | 未完整收敛 |

## 最终电子能量误差

- 最后一个 `DAV/RMM` 能量差异：`9.25021 eV`
- `F` 差异：`9.25021 eV`
- `E0` 差异：`9.24545 eV`

## OSZICAR 末行

MaterialDFT：

```text
   1 F= -.36421989E+02 E0= -.36417290E+02  d E =-.140955E-01  mag=     8.9858
```

VASP 6.5.1：

```text
   1 F= -.45672200E+02 E0= -.45662744E+02  d E =-.283669E-01  mag=     7.0312
```

## 对比结论

- 收敛状态：MaterialDFT 为 `程序完成，非完整收敛`，VASP 为 `程序完成，非完整收敛`。
- 迭代步数：ionic 1/1，electronic 60/60 (delta +0)。
- 数值差异：最后电子能量差异 `9.25021 eV`；`F` 差异 `9.25021 eV`；`E0` 差异 `9.24545 eV`。

本文件记录同一输入在 MPI 32 ranks 下的结果；对于非完整收敛 case，仅作为程序行为和输出对比，不作为完整收敛精度声明。
