# MaterialDFT 与 VASP 6.5.1 的结果对比

## 结果摘要

| 程序 | 状态 | ionic steps | electronic iterations | per-ionic electronic iterations | time |
| --- | --- | ---: | ---: | --- | ---: |
| MaterialDFT | 程序完成，非完整收敛 (ionic_unconverged) | 3 | 22 | `11, 5, 6` | `0.970 s` |
| VASP 6.5.1 | 程序完成，非完整收敛 | 3 | 21 | `11, 5, 5` | `5 s` |


## OSZICAR 末行

MaterialDFT：

```text
   3 F= -.65780040E+01 E0= -.65780040E+01  d E =-.247793E-01
```

VASP 6.5.1：

```text
   3 F= -.65780310E+01 E0= -.65780310E+01  d E =-.248066E-01
```

## 对比结论

- 收敛状态：MaterialDFT 为 `程序完成，非完整收敛 (ionic_unconverged)`，VASP 为 `程序完成，非完整收敛`。
- 数值差异：`F` 差异 `2.700e-05 eV`；`E0` 差异 `2.700e-05 eV`。
- 迭代步数：ionic 3/3，electronic 22/21 (delta +1)。

本文件记录同一输入在 `MPI 32 ranks` 下的新跑结果；对于非完整收敛 case，仅作为程序行为和输出对比，不作为完整收敛精度声明。
