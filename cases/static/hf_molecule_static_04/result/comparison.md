# MaterialDFT 与 VASP 6.5.1 的结果对比

## 结果摘要

| 程序 | 状态 | ionic steps | electronic iterations | per-ionic electronic iterations | time |
| --- | --- | ---: | ---: | --- | ---: |
| MaterialDFT | 正常完成 | 1 | 20 | `20` | `43 s` |
| VASP 6.5.1 | 正常完成 | 1 | 21 | `21` | `27.432 s` |


## OSZICAR 末行

MaterialDFT：

```text
   1 F= -.78731285E+01 E0= -.78731285E+01  d E =-.176126E-11
```

VASP 6.5.1：

```text
   1 F= -.78731290E+01 E0= -.78731290E+01  d E =-.810230E-15
```

## 对比结论

- 收敛状态：MaterialDFT 为 `正常完成`，VASP 为 `正常完成`。
- 数值差异：`F` 差异 `5.000e-07 eV`；`E0` 差异 `5.000e-07 eV`。
- 迭代步数：ionic 1/1，electronic 20/21 (delta -1)。

本文件记录同一输入在 `MPI 32 ranks` 下的新跑结果；对于非完整收敛 case，仅作为程序行为和输出对比，不作为完整收敛精度声明。
