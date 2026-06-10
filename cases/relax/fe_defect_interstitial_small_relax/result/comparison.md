# MaterialDFT 与 VASP 6.5.1 的结果对比

## 结果摘要

| 程序 | 状态 | ionic steps | electronic iterations | per-ionic electronic iterations | time |
| --- | --- | ---: | ---: | --- | ---: |
| MaterialDFT | 正常完成 | 1 | 14 | `14` | `6.386 s` |
| VASP 6.5.1 | 正常完成 | 1 | 14 | `14` | `5.543 s` |

## SCF 收敛判据

| 程序 | EDIFF | 最后 `DAV/RMM` 的 `|d eps|` | 判定 |
| --- | ---: | ---: | --- |
| MaterialDFT | `1.000e-05` | `9.759e-06` | 收敛 |
| VASP 6.5.1 | `1.000e-05` | `9.774e-06` | 收敛 |

## 最终电子能量误差

- 最后一个 `DAV/RMM` 能量差异：`4.800e-09 eV`
- `F` 差异：`0 eV`
- `E0` 差异：`0 eV`

## OSZICAR 末行

MaterialDFT：

```text
   1 F= -.10565298E+02 E0= -.10565061E+02  d E =-.105653E+02  mag=     2.0318
```

VASP 6.5.1：

```text
   1 F= -.10565298E+02 E0= -.10565061E+02  d E =-.105653E+02  mag=     2.0318
```

## 对比结论

- 收敛状态：MaterialDFT 为 `正常完成`，VASP 为 `正常完成`。
- 迭代步数：ionic 1/1，electronic 14/14 (delta +0)。
- 数值差异：最后电子能量差异 `4.800e-09 eV`；`F` 差异 `0 eV`；`E0` 差异 `0 eV`。

本文件记录同一输入在 MPI 32 ranks 下的结果；对于非完整收敛 case，仅作为程序行为和输出对比，不作为完整收敛精度声明。
