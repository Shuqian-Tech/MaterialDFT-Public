# MaterialDFT 与 VASP 6.5.1 的结果对比

## 结果摘要

| 程序 | 状态 | ionic steps | electronic iterations | per-ionic electronic iterations | time |
| --- | --- | ---: | ---: | --- | ---: |
| MaterialDFT | 程序完成，非完整收敛 | 1 | 60 | `60` | `122 s` |
| VASP 6.5.1 | 程序完成，非完整收敛 | 1 | 60 | `60` | `27 s` |

## SCF 收敛判据

| 程序 | EDIFF | 最后 `DAV/RMM` 的 `|d eps|` | 判定 |
| --- | ---: | ---: | --- |
| MaterialDFT | `1.000e-05` | `0.14753` | 未完整收敛 |
| VASP 6.5.1 | `1.000e-05` | `0.0061661` | 未完整收敛 |

## 最终电子能量误差

- 最后一个 `DAV/RMM` 能量差异：`6.67038 eV`
- `F` 差异：`6.67039 eV`
- `E0` 差异：`6.65689 eV`

## OSZICAR 末行

MaterialDFT：

```text
   1 F= -.46893020E+02 E0= -.46887613E+02  d E =-.162218E-01  mag=     5.9484
```

VASP 6.5.1：

```text
   1 F= -.40222635E+02 E0= -.40230720E+02  d E =0.242547E-01  mag=     3.3097
```

## 对比结论

- 收敛状态：MaterialDFT 为 `程序完成，非完整收敛`，VASP 为 `程序完成，非完整收敛`。
- 迭代步数：ionic 1/1，electronic 60/60 (delta +0)。
- 数值差异：最后电子能量差异 `6.67038 eV`；`F` 差异 `6.67039 eV`；`E0` 差异 `6.65689 eV`。

本文件记录同一输入在 MPI 32 ranks 下的结果；对于非完整收敛 case，仅作为程序行为和输出对比，不作为完整收敛精度声明。
