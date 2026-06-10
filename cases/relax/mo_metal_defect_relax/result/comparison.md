# MaterialDFT 与 VASP 6.5.1 的结果对比

## 结果摘要

| 程序 | 状态 | ionic steps | electronic iterations | per-ionic electronic iterations | time |
| --- | --- | ---: | ---: | --- | ---: |
| MaterialDFT | 程序完成，非完整收敛 (ionic_unconverged) | 5 | 47 | `10, 9, 10, 10, 8` | `19 s` |
| VASP 6.5.1 | 程序完成，非完整收敛 | 5 | 49 | `10, 9, 10, 10, 10` | `15.392 s` |


## OSZICAR 末行

MaterialDFT：

```text
   5 F= -.73092797E+02 E0= -.73100836E+02  d E =-.158192E+01
```

VASP 6.5.1：

```text
   5 F= -.73083971E+02 E0= -.73092148E+02  d E =-.157249E+01
```

## 对比结论

- 收敛状态：MaterialDFT 为 `程序完成，非完整收敛 (ionic_unconverged)`，VASP 为 `程序完成，非完整收敛`。
- 数值差异：`F` 差异 `0.00883 eV`；`E0` 差异 `0.00869 eV`。
- 迭代步数：ionic 5/5，electronic 47/49 (delta -2)。

本文件记录同一输入在 `MPI 32 ranks` 下的新跑结果；对于非完整收敛 case，仅作为程序行为和输出对比，不作为完整收敛精度声明。
