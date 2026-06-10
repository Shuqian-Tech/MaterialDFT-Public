# MaterialDFT 与 VASP 6.5.1 的结果对比

## 结果摘要

| 程序 | 状态 | ionic steps | electronic iterations | per-ionic electronic iterations | time |
| --- | --- | ---: | ---: | --- | ---: |
| MaterialDFT | 程序完成，非完整收敛 (ionic_unconverged) | 2 | 16 | `11, 5` | `0.880 s` |
| VASP 6.5.1 | 程序完成，非完整收敛 | 2 | 16 | `11, 5` | `3 s` |


## OSZICAR 末行

MaterialDFT：

```text
   2 F= -.78519655E+01 E0= -.78389131E+01  d E =-.178385E+00
```

VASP 6.5.1：

```text
   2 F= -.78519275E+01 E0= -.78388785E+01  d E =-.178347E+00
```

## 对比结论

- 收敛状态：MaterialDFT 为 `程序完成，非完整收敛 (ionic_unconverged)`，VASP 为 `程序完成，非完整收敛`。
- 数值差异：`F` 差异 `3.800e-05 eV`；`E0` 差异 `3.460e-05 eV`。
- 迭代步数：ionic 2/2，electronic 16/16 (delta 0)。

本文件记录同一输入在 `MPI 32 ranks` 下的新跑结果；对于非完整收敛 case，仅作为程序行为和输出对比，不作为完整收敛精度声明。
