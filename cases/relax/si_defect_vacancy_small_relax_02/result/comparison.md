# MaterialDFT 与 VASP 6.5.1 的结果对比

## 结果摘要

| 程序 | 状态 | ionic steps | electronic iterations | per-ionic electronic iterations | time |
| --- | --- | ---: | ---: | --- | ---: |
| MaterialDFT | 正常完成 | 1 | 12 | `12` | `6.948 s` |
| VASP 6.5.1 | 正常完成 | 1 | 12 | `12` | `5.031 s` |

## SCF 收敛判据

| 程序 | EDIFF | 最后 `DAV/RMM` 的 `|d eps|` | 判定 |
| --- | ---: | ---: | --- |
| MaterialDFT | `1.000e-05` | `1.943e-06` | 收敛 |
| VASP 6.5.1 | `1.000e-05` | `1.808e-06` | 收敛 |

## 最终电子能量误差

- 最后一个 `DAV/RMM` 能量差异：`1.842e-07 eV`
- `F` 差异：`1.000e-06 eV`
- `E0` 差异：`0 eV`

## OSZICAR 末行

MaterialDFT：

```text
   1 F= -.34763064E+02 E0= -.34753779E+02  d E =-.347631E+02
```

VASP 6.5.1：

```text
   1 F= -.34763065E+02 E0= -.34753779E+02  d E =-.347631E+02
```

## 对比结论

- 收敛状态：MaterialDFT 为 `正常完成`，VASP 为 `正常完成`。
- 迭代步数：ionic 1/1，electronic 12/12 (delta +0)。
- 数值差异：最后电子能量差异 `1.842e-07 eV`；`F` 差异 `1.000e-06 eV`；`E0` 差异 `0 eV`。

本文件记录同一输入在 MPI 32 ranks 下的结果；对于非完整收敛 case，仅作为程序行为和输出对比，不作为完整收敛精度声明。
