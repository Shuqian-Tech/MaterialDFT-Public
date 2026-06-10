# MaterialDFT 与 VASP 6.5.1 的结果对比

## 结果摘要

| 程序 | 状态 | ionic steps | electronic iterations | per-ionic electronic iterations | time |
| --- | --- | ---: | ---: | --- | ---: |
| MaterialDFT | 正常完成 | 1 | 18 | `18` | `31 s` |
| VASP 6.5.1 | 正常完成 | 1 | 19 | `19` | `11 s` |

## SCF 收敛判据

| 程序 | EDIFF | 最后 `DAV/RMM` 的 `|d eps|` | 判定 |
| --- | ---: | ---: | --- |
| MaterialDFT | `1e-06` | `5.298e-07` | 收敛 |
| VASP 6.5.1 | `1e-06` | `1.7937e-07` | 收敛 |

## 最终电子能量误差

- 最后一个 `DAV/RMM` 能量差异：`3.480e-07 eV`
- `F` 差异：`0 eV`
- `E0` 差异：`0 eV`

## OSZICAR 末行

MaterialDFT：

```text
   1 F= -.13663181E+03 E0= -.13663178E+03  d E =-.499493E-04
```

VASP 6.5.1：

```text
   1 F= -.13663181E+03 E0= -.13663178E+03  d E =-.502687E-04
```

## 对比结论

- 收敛状态：MaterialDFT 为 `正常完成`，VASP 为 `正常完成`。
- 迭代步数：ionic 1/1，electronic 18/19 (delta -1)。
- 数值差异：最后电子能量差异 `3.480e-07 eV`；`F` 差异 `0 eV`；`E0` 差异 `0 eV`。

本文件记录同一输入在 `MPI 32 ranks` 下的新跑结果；对于非完整收敛 case，仅作为程序行为和输出对比，不作为完整收敛精度声明。
