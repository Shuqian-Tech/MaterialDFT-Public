# MaterialDFT 与 VASP 6.5.1 的结果对比

## 结果摘要

| 程序 | 状态 | ionic steps | electronic iterations | per-ionic electronic iterations | time |
| --- | --- | ---: | ---: | --- | ---: |
| MaterialDFT | 程序完成，非完整收敛 | 1 | 60 | `60` | `125 s` |
| VASP 6.5.1 | 程序完成，非完整收敛 | 1 | 60 | `60` | `30 s` |

## SCF 收敛判据

| 程序 | EDIFF | 最后 `DAV/RMM` 的 `|d eps|` | 判定 |
| --- | ---: | ---: | --- |
| MaterialDFT | `1.000e-05` | `394.03` | 未完整收敛 |
| VASP 6.5.1 | `1.000e-05` | `0.0091137` | 未完整收敛 |

## 最终电子能量误差

- 最后一个 `DAV/RMM` 能量差异：`3.39784 eV`
- `F` 差异：`3.39784 eV`
- `E0` 差异：`3.40512 eV`

## OSZICAR 末行

MaterialDFT：

```text
   1 F= -.65008579E+02 E0= -.65004748E+02  d E =-.114942E-01  mag=     2.7448
```

VASP 6.5.1：

```text
   1 F= -.68406420E+02 E0= -.68409869E+02  d E =0.103454E-01  mag=     7.0558
```

## 对比结论

- 收敛状态：MaterialDFT 为 `程序完成，非完整收敛`，VASP 为 `程序完成，非完整收敛`。
- 迭代步数：ionic 1/1，electronic 60/60 (delta +0)。
- 数值差异：最后电子能量差异 `3.39784 eV`；`F` 差异 `3.39784 eV`；`E0` 差异 `3.40512 eV`。

本文件记录同一输入在 MPI 32 ranks 下的结果；对于非完整收敛 case，仅作为程序行为和输出对比，不作为完整收敛精度声明。
