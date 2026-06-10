# MaterialDFT 与 VASP 6.5.1 的结果对比

## 结果摘要

| 程序 | 状态 | ionic steps | electronic iterations | per-ionic electronic iterations | time |
| --- | --- | ---: | ---: | --- | ---: |
| MaterialDFT | 正常完成 | 5 | 30 | `6, 6, 6, 6, 6` | `23 s` |
| VASP 6.5.1 | 正常完成 | 5 | 30 | `6, 6, 6, 6, 6` | `13.813 s` |


## OSZICAR 末行

MaterialDFT：

```text
   5 F= -.29340077E+02 E0= -.29339984E+02  d E =0.651933E+00  mag=     0.7874
```

VASP 6.5.1：

```text
   5 F= -.29340071E+02 E0= -.29339966E+02  d E =0.391101E+00  mag=     0.7878
```

## 对比结论

- 收敛状态：MaterialDFT 为 `正常完成`，VASP 为 `正常完成`。
- 数值差异：`F` 差异 `6.000e-06 eV`；`E0` 差异 `1.800e-05 eV`。
- 迭代步数：ionic 5/5，electronic 30/30 (delta 0)。

本文件记录同一输入在 `MPI 32 ranks` 下的新跑结果；对于非完整收敛 case，仅作为程序行为和输出对比，不作为完整收敛精度声明。
