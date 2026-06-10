# MaterialDFT 与 VASP 6.5.1 的结果对比

## 结果摘要

| 程序 | 状态 | ionic steps | electronic iterations | per-ionic electronic iterations | time |
| --- | --- | ---: | ---: | --- | ---: |
| MaterialDFT | 程序完成，非完整收敛 | 5 | 50 | `10, 10, 10, 10, 10` | `274 s` |
| VASP 6.5.1 | 程序完成，非完整收敛 | 5 | 50 | `10, 10, 10, 10, 10` | `72 s` |

## SCF 收敛判据

| 程序 | EDIFF | 最后 `DAV/RMM` 的 `|d eps|` | 判定 |
| --- | ---: | ---: | --- |
| MaterialDFT | `1e-06` | `3.3801e-05` | 未完整收敛 |
| VASP 6.5.1 | `1e-06` | `0.0037038` | 未完整收敛 |

## 最终电子能量误差

- 最后一个 `DAV/RMM` 能量差异：`590 eV`
- `F` 差异：`590 eV`
- `E0` 差异：`590 eV`

## OSZICAR 末行

MaterialDFT：

```text
   5 F= -.61668583E+02 E0= -.61646113E+02  d E =-.116456E+03
```

VASP 6.5.1：

```text
   5 F= 0.52789626E+03 E0= 0.52791037E+03  d E =0.473079E+03
```

## 对比结论

- 收敛状态：MaterialDFT 为 `程序完成，非完整收敛`，VASP 为 `程序完成，非完整收敛`。
- 迭代步数：ionic 5/5，electronic 50/50 (delta +0)。
- 数值差异：最后电子能量差异 `590 eV`；`F` 差异 `590 eV`；`E0` 差异 `590 eV`。

本文件记录同一输入在 `MPI 32 ranks` 下的新跑结果；对于非完整收敛 case，仅作为程序行为和输出对比，不作为完整收敛精度声明。
