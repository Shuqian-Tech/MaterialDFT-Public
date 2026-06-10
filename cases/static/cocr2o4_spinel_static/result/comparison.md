# MaterialDFT 与 VASP 6.5.1 的结果对比

## 结果摘要

| 程序 | 状态 | ionic steps | electronic iterations | per-ionic electronic iterations | time |
| --- | --- | ---: | ---: | --- | ---: |
| MaterialDFT | 程序完成，非完整收敛 | 1 | 60 | `60` | `125 s` |
| VASP 6.5.1 | 程序完成，非完整收敛 | 1 | 60 | `60` | `29 s` |

## SCF 收敛判据

| 程序 | EDIFF | 最后 `DAV/RMM` 的 `|d eps|` | 判定 |
| --- | ---: | ---: | --- |
| MaterialDFT | `1.000e-05` | `0.06329` | 未完整收敛 |
| VASP 6.5.1 | `1.000e-05` | `0.043935` | 未完整收敛 |

## 最终电子能量误差

- 最后一个 `DAV/RMM` 能量差异：`55.4888 eV`
- `F` 差异：`55.4888 eV`
- `E0` 差异：`55.4826 eV`

## OSZICAR 末行

MaterialDFT：

```text
   1 F= -.64703479E+02 E0= -.64706325E+02  d E =0.853685E-02  mag=    12.1710
```

VASP 6.5.1：

```text
   1 F= -.92146407E+01 E0= -.92237434E+01  d E =0.273080E-01  mag=    12.0558
```

## 对比结论

- 收敛状态：MaterialDFT 为 `程序完成，非完整收敛`，VASP 为 `程序完成，非完整收敛`。
- 迭代步数：ionic 1/1，electronic 60/60 (delta +0)。
- 数值差异：最后电子能量差异 `55.4888 eV`；`F` 差异 `55.4888 eV`；`E0` 差异 `55.4826 eV`。

本文件记录同一输入在 MPI 32 ranks 下的结果；对于非完整收敛 case，仅作为程序行为和输出对比，不作为完整收敛精度声明。
