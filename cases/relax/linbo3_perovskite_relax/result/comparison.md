# MaterialDFT 与 VASP 6.5.1 的结果对比

## 结果摘要

| 程序 | 状态 | ionic steps | electronic iterations | per-ionic electronic iterations | time |
| --- | --- | ---: | ---: | --- | ---: |
| MaterialDFT | 正常完成 | 3 | 31 | `14, 9, 8` | `8 s` |
| VASP 6.5.1 | 正常完成 | 3 | 32 | `14, 10, 8` | `4.787 s` |


## OSZICAR 末行

MaterialDFT：

```text
   3 F= -.38255564E+02 E0= -.38255564E+02  d E =-.144069E+00
```

VASP 6.5.1：

```text
   3 F= -.38255567E+02 E0= -.38255567E+02  d E =-.144072E+00
```

## 对比结论

- 收敛状态：MaterialDFT 为 `正常完成`，VASP 为 `正常完成`。
- 数值差异：`F` 差异 `3.000e-06 eV`；`E0` 差异 `3.000e-06 eV`。
- 迭代步数：ionic 3/3，electronic 31/32 (delta -1)。

本文件记录同一输入在 `MPI 32 ranks` 下的新跑结果；对于非完整收敛 case，仅作为程序行为和输出对比，不作为完整收敛精度声明。
