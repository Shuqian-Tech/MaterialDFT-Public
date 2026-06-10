# MaterialDFT 与 VASP 6.5.1 的结果对比

## 结果摘要

| 程序 | 状态 | ionic steps | electronic iterations | per-ionic electronic iterations | time |
| --- | --- | ---: | ---: | --- | ---: |
| MaterialDFT | 正常完成 | 1 | 11 | `11` | `3 s` |
| VASP 6.5.1 | 正常完成 | 1 | 13 | `13` | `2.189 s` |


## OSZICAR 末行

MaterialDFT：

```text
   1 F= -.49493221E+00 E0= -.44515102E+00  d E =-.149344E+00
```

VASP 6.5.1：

```text
   1 F= -.49493060E+00 E0= -.44514940E+00  d E =-.149344E+00
```

## 对比结论

- 收敛状态：MaterialDFT 为 `正常完成`，VASP 为 `正常完成`。
- 数值差异：`F` 差异 `1.610e-06 eV`；`E0` 差异 `1.620e-06 eV`。
- 迭代步数：ionic 1/1，electronic 11/13 (delta -2)。

本文件记录同一输入在 `MPI 32 ranks` 下的新跑结果；对于非完整收敛 case，仅作为程序行为和输出对比，不作为完整收敛精度声明。
