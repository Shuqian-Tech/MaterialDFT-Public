# MaterialDFT 与 VASP 6.5.1 的结果对比

## 结果摘要

| 程序 | 状态 | ionic steps | electronic iterations | per-ionic electronic iterations | time |
| --- | --- | ---: | ---: | --- | ---: |
| MaterialDFT | 正常完成 | 1 | 42 | `42` | `188 s` |
| VASP 6.5.1 | 正常完成 | 1 | 28 | `28` | `46 s` |

## SCF 收敛判据

| 程序 | EDIFF | 最后 `DAV/RMM` 的 `|d eps|` | 判定 |
| --- | ---: | ---: | --- |
| MaterialDFT | `1e-06` | `1.9587e-07` | 收敛 |
| VASP 6.5.1 | `1e-06` | `2.9477e-07` | 收敛 |

## 最终电子能量误差

- 最后一个 `DAV/RMM` 能量差异：`8.590e-08 eV`
- `F` 差异：`0 eV`
- `E0` 差异：`1.000e-06 eV`

## OSZICAR 末行

MaterialDFT：

```text
   1 F= 0.54966293E+02 E0= 0.54980438E+02  d E =-.282901E-01
```

VASP 6.5.1：

```text
   1 F= 0.54966293E+02 E0= 0.54980439E+02  d E =-.282914E-01
```

## 对比结论

- 收敛状态：MaterialDFT 为 `正常完成`，VASP 为 `正常完成`。
- 迭代步数：ionic 1/1，electronic 42/28 (delta +14)。
- 数值差异：最后电子能量差异 `8.590e-08 eV`；`F` 差异 `0 eV`；`E0` 差异 `1.000e-06 eV`。

本文件记录同一输入在 `MPI 32 ranks` 下的新跑结果；对于非完整收敛 case，仅作为程序行为和输出对比，不作为完整收敛精度声明。
