# MaterialDFT 与 VASP 6.5.1 的结果对比

## 结果摘要

| 程序 | 状态 | ionic steps | electronic iterations | per-ionic electronic iterations | time |
| --- | --- | ---: | ---: | --- | ---: |
| MaterialDFT | 正常完成 | 3 | 90 | `60, 20, 10` | `56 s` |
| VASP 6.5.1 | 正常完成 | 3 | 61 | `40, 16, 5` | `15 s` |

## SCF 收敛判据

| 程序 | EDIFF | 最后 `DAV/RMM` 的 `|d eps|` | 判定 |
| --- | ---: | ---: | --- |
| MaterialDFT | `1e-05` | `4.994e-07` | 收敛 |
| VASP 6.5.1 | `1e-05` | `3.7227e-08` | 收敛 |

## 最终电子能量误差

- 最后一个 `DAV/RMM` 能量差异：`0.00492 eV`
- `F` 差异：`0.00492 eV`
- `E0` 差异：`0.00492 eV`

## OSZICAR 末行

MaterialDFT：

```text
   3 F= -.73476197E+01 E0= -.73476197E+01  d E =-.191205E+02
```

VASP 6.5.1：

```text
   3 F= -.73426987E+01 E0= -.73426987E+01  d E =-.191147E+02
```

## 对比结论

- 收敛状态：MaterialDFT 为 `正常完成`，VASP 为 `正常完成`。
- 迭代步数：ionic 3/3，electronic 90/61 (delta +29)。
- 数值差异：最后电子能量差异 `0.00492 eV`；`F` 差异 `0.00492 eV`；`E0` 差异 `0.00492 eV`。

本文件记录同一输入在 `MPI 32 ranks` 下的新跑结果；对于非完整收敛 case，仅作为程序行为和输出对比，不作为完整收敛精度声明。
