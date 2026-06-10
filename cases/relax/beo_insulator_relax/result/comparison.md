# MaterialDFT 与 VASP 6.5.1 的结果对比

## 结果摘要

| 程序 | 状态 | ionic steps | electronic iterations | per-ionic electronic iterations | time |
| --- | --- | ---: | ---: | --- | ---: |
| MaterialDFT | 正常完成 | 7 | 54 | `13, 5, 6, 6, 7, 8, 9` | `12 s` |
| VASP 6.5.1 | 正常完成 | 7 | 59 | `14, 5, 6, 7, 8, 9, 10` | `3.864 s` |


## OSZICAR 末行

MaterialDFT：

```text
   7 F= -.22156030E+02 E0= -.22156030E+02  d E =-.266385E+00
```

VASP 6.5.1：

```text
   7 F= -.22156028E+02 E0= -.22156028E+02  d E =-.266384E+00
```

## 对比结论

- 收敛状态：MaterialDFT 为 `正常完成`，VASP 为 `正常完成`。
- 数值差异：`F` 差异 `2.000e-06 eV`；`E0` 差异 `2.000e-06 eV`。
- 迭代步数：ionic 7/7，electronic 54/59 (delta -5)。

本文件记录同一输入在 `MPI 32 ranks` 下的新跑结果；对于非完整收敛 case，仅作为程序行为和输出对比，不作为完整收敛精度声明。
