# MaterialDFT 与 VASP 6.5.1 的结果对比

## 结果摘要

| 程序 | 状态 | ionic steps | electronic iterations | per-ionic electronic iterations | time |
| --- | --- | ---: | ---: | --- | ---: |
| MaterialDFT | 正常完成 | 2 | 88 | `59, 29` | `243 s` |
| VASP 6.5.1 | 正常完成 | 2 | 88 | `59, 29` | `29 s` |

## SCF 收敛判据

| 程序 | EDIFF | 最后 `DAV/RMM` 的 `|d eps|` | 判定 |
| --- | ---: | ---: | --- |
| MaterialDFT | `2e-05` | `7.9232e-09` | 收敛 |
| VASP 6.5.1 | `2e-05` | `8.7078e-09` | 收敛 |

## 最终电子能量误差

- 最后一个 `DAV/RMM` 能量差异：`6.920e-06 eV`
- `F` 差异：`7.000e-06 eV`
- `E0` 差异：`7.000e-06 eV`

## OSZICAR 末行

MaterialDFT：

```text
   2 F= -.67603276E+02 E0= -.67603276E+02  d E =-.380282E+01
```

VASP 6.5.1：

```text
   2 F= -.67603269E+02 E0= -.67603269E+02  d E =-.380281E+01
```

## 对比结论

- 收敛状态：MaterialDFT 为 `正常完成`，VASP 为 `正常完成`。
- 迭代步数：ionic 2/2，electronic 88/88 (delta +0)。
- 数值差异：最后电子能量差异 `6.920e-06 eV`；`F` 差异 `7.000e-06 eV`；`E0` 差异 `7.000e-06 eV`。

本文件记录同一输入在 `MPI 32 ranks` 下的新跑结果；对于非完整收敛 case，仅作为程序行为和输出对比，不作为完整收敛精度声明。
