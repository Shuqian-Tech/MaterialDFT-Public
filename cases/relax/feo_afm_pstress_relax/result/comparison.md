# MaterialDFT 与 VASP 6.5.1 的结果对比

## 结果摘要

| 程序 | 状态 | ionic steps | electronic iterations | per-ionic electronic iterations | time |
| --- | --- | ---: | ---: | --- | ---: |
| MaterialDFT | 正常完成 | 3 | 50 | `18, 17, 15` | `311 s` |
| VASP 6.5.1 | 正常完成 | 3 | 66 | `30, 18, 18` | `299 s` |

## SCF 收敛判据

| 程序 | EDIFF | 最后 `DAV/RMM` 的 `|d eps|` | 判定 |
| --- | ---: | ---: | --- |
| MaterialDFT | `1e-05` | `4.7665e-06` | 收敛 |
| VASP 6.5.1 | `1e-05` | `1.4244e-06` | 收敛 |

## 最终电子能量误差

- 最后一个 `DAV/RMM` 能量差异：`9.287e-04 eV`
- `F` 差异：`5.210e-04 eV`
- `E0` 差异：`4.650e-04 eV`

## OSZICAR 末行

MaterialDFT：

```text
   3 F= -.58666294E+02 E0= -.58669520E+02  d E =-.759658E-01  mag=     0.0003
```

VASP 6.5.1：

```text
   3 F= -.58665773E+02 E0= -.58669055E+02  d E =-.754125E-01  mag=    -0.0009
```

## 对比结论

- 收敛状态：MaterialDFT 为 `正常完成`，VASP 为 `正常完成`。
- 迭代步数：ionic 3/3，electronic 50/66 (delta -16)。
- 数值差异：最后电子能量差异 `9.287e-04 eV`；`F` 差异 `5.210e-04 eV`；`E0` 差异 `4.650e-04 eV`。

本文件记录同一输入在 `MPI 32 ranks` 下的新跑结果；对于非完整收敛 case，仅作为程序行为和输出对比，不作为完整收敛精度声明。
