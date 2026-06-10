# MaterialDFT 与 VASP 6.5.1 的结果对比

## 结果摘要

| 程序 | 状态 | ionic steps | electronic iterations | per-ionic electronic iterations | time |
| --- | --- | ---: | ---: | --- | ---: |
| MaterialDFT | 正常完成 | 5 | 46 | `10, 7, 9, 10, 10` | `308 s` |
| VASP 6.5.1 | 正常完成 | 5 | 46 | `10, 7, 9, 10, 10` | `70 s` |

## SCF 收敛判据

| 程序 | EDIFF | 最后 `DAV/RMM` 的 `|d eps|` | 判定 |
| --- | ---: | ---: | --- |
| MaterialDFT | `1e-06` | `6.2686e-08` | 收敛 |
| VASP 6.5.1 | `1e-06` | `5.7035e-08` | 收敛 |

## 最终电子能量误差

- 最后一个 `DAV/RMM` 能量差异：`5.674e-05 eV`
- `F` 差异：`5.700e-05 eV`
- `E0` 差异：`5.600e-05 eV`

## OSZICAR 末行

MaterialDFT：

```text
   5 F= -.72614473E+02 E0= -.72575992E+02  d E =-.259970E+00
```

VASP 6.5.1：

```text
   5 F= -.72614416E+02 E0= -.72575936E+02  d E =-.259921E+00
```

## 对比结论

- 收敛状态：MaterialDFT 为 `正常完成`，VASP 为 `正常完成`。
- 迭代步数：ionic 5/5，electronic 46/46 (delta +0)。
- 数值差异：最后电子能量差异 `5.674e-05 eV`；`F` 差异 `5.700e-05 eV`；`E0` 差异 `5.600e-05 eV`。

本文件记录同一输入在 `MPI 32 ranks` 下的新跑结果；对于非完整收敛 case，仅作为程序行为和输出对比，不作为完整收敛精度声明。
