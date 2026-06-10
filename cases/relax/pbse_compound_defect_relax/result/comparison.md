# MaterialDFT 与 VASP 6.5.1 的结果对比

## 结果摘要

| 程序 | 状态 | ionic steps | electronic iterations | per-ionic electronic iterations | time |
| --- | --- | ---: | ---: | --- | ---: |
| MaterialDFT | 正常完成 | 5 | 36 | `10, 6, 6, 8, 6` | `209 s` |
| VASP 6.5.1 | 正常完成 | 5 | 40 | `10, 7, 7, 9, 7` | `34 s` |

## SCF 收敛判据

| 程序 | EDIFF | 最后 `DAV/RMM` 的 `|d eps|` | 判定 |
| --- | ---: | ---: | --- |
| MaterialDFT | `1e-06` | `6.9354e-07` | 收敛 |
| VASP 6.5.1 | `1e-06` | `4.6144e-07` | 收敛 |

## 最终电子能量误差

- 最后一个 `DAV/RMM` 能量差异：`4.094e-04 eV`
- `F` 差异：`4.100e-04 eV`
- `E0` 差异：`4.100e-04 eV`

## OSZICAR 末行

MaterialDFT：

```text
   5 F= -.14648015E+03 E0= -.14645194E+03  d E =-.325021E-01
```

VASP 6.5.1：

```text
   5 F= -.14647974E+03 E0= -.14645153E+03  d E =-.319819E-01
```

## 对比结论

- 收敛状态：MaterialDFT 为 `正常完成`，VASP 为 `正常完成`。
- 迭代步数：ionic 5/5，electronic 36/40 (delta -4)。
- 数值差异：最后电子能量差异 `4.094e-04 eV`；`F` 差异 `4.100e-04 eV`；`E0` 差异 `4.100e-04 eV`。

本文件记录同一输入在 `MPI 32 ranks` 下的新跑结果；对于非完整收敛 case，仅作为程序行为和输出对比，不作为完整收敛精度声明。
