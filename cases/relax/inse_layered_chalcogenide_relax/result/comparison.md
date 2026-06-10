# MaterialDFT 与 VASP 6.5.1 的结果对比

## 结果摘要

| 程序 | 状态 | ionic steps | electronic iterations | per-ionic electronic iterations | time |
| --- | --- | ---: | ---: | --- | ---: |
| MaterialDFT | 正常完成 | 1 | 20 | `20` | `8.215 s` |
| VASP 6.5.1 | 正常完成 | 1 | 12 | `12` | `4.217 s` |

## SCF 收敛判据

| 程序 | EDIFF | 最后 `DAV/RMM` 的 `|d eps|` | 判定 |
| --- | ---: | ---: | --- |
| MaterialDFT | `1.000e-05` | `1.263e-08` | 收敛 |
| VASP 6.5.1 | `1.000e-05` | `9.994e-06` | 收敛 |

## 最终电子能量误差

- 最后一个 `DAV/RMM` 能量差异：`1.597e-04 eV`
- `F` 差异：`1.597e-04 eV`
- `E0` 差异：`2.882e-04 eV`

## OSZICAR 末行

MaterialDFT：

```text
   1 F= -.83870932E+01 E0= -.83704180E+01  d E =-.838709E+01
```

VASP 6.5.1：

```text
   1 F= -.83869335E+01 E0= -.83701298E+01  d E =-.838693E+01
```

## 对比结论

- 收敛状态：MaterialDFT 为 `正常完成`，VASP 为 `正常完成`。
- 迭代步数：ionic 1/1，electronic 20/12 (delta +8)。
- 数值差异：最后电子能量差异 `1.597e-04 eV`；`F` 差异 `1.597e-04 eV`；`E0` 差异 `2.882e-04 eV`。

本文件记录同一输入在 MPI 32 ranks 下的结果；对于非完整收敛 case，仅作为程序行为和输出对比，不作为完整收敛精度声明。
