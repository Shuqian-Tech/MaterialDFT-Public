# MaterialDFT 与 VASP 6.5.1 的结果对比

## 结果摘要

| 程序 | 状态 | ionic steps | electronic iterations | per-ionic electronic iterations | time |
| --- | --- | ---: | ---: | --- | ---: |
| MaterialDFT | 正常完成 | 1 | 24 | `24` | `27 s` |
| VASP 6.5.1 | 正常完成 | 1 | 26 | `26` | `18 s` |

## SCF 收敛判据

| 程序 | EDIFF | 最后 `DAV/RMM` 的 `|d eps|` | 判定 |
| --- | ---: | ---: | --- |
| MaterialDFT | `1.000e-05` | `1.275e-06` | 收敛 |
| VASP 6.5.1 | `1.000e-05` | `9.282e-07` | 收敛 |

## 最终电子能量误差

- 最后一个 `DAV/RMM` 能量差异：`2.212e-05 eV`
- `F` 差异：`2.200e-05 eV`
- `E0` 差异：`3.100e-05 eV`

## OSZICAR 末行

MaterialDFT：

```text
   1 F= -.46474429E+02 E0= -.46473292E+02  d E =-.341046E-02  mag=     1.4917
```

VASP 6.5.1：

```text
   1 F= -.46474407E+02 E0= -.46473261E+02  d E =-.343717E-02  mag=     1.4905
```

## 对比结论

- 收敛状态：MaterialDFT 为 `正常完成`，VASP 为 `正常完成`。
- 迭代步数：ionic 1/1，electronic 24/26 (delta -2)。
- 数值差异：最后电子能量差异 `2.212e-05 eV`；`F` 差异 `2.200e-05 eV`；`E0` 差异 `3.100e-05 eV`。

本文件记录同一输入在 MPI 32 ranks 下的结果；对于非完整收敛 case，仅作为程序行为和输出对比，不作为完整收敛精度声明。
