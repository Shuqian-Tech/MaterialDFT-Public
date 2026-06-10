# MaterialDFT 与 VASP 6.5.1 的结果对比

## 结果摘要

| 程序 | 状态 | ionic steps | electronic iterations | per-ionic electronic iterations | time |
| --- | --- | ---: | ---: | --- | ---: |
| MaterialDFT | 正常完成 | 13 | 123 | `13, 13, 11, 9, 11, 9, 9, 8, 10, 8, 9, 7, 6` | `21 s` |
| VASP 6.5.1 | 正常完成 | 13 | 123 | `13, 13, 11, 9, 11, 9, 9, 8, 10, 8, 9, 7, 6` | `12 s` |


## OSZICAR 末行

MaterialDFT：

```text
  13 F= -.36422089E+02 E0= -.36417642E+02  d E =-.119000E+03
```

VASP 6.5.1：

```text
  13 F= -.36422090E+02 E0= -.36417643E+02  d E =-.119000E+03
```

## 对比结论

- 收敛状态：MaterialDFT 为 `正常完成`，VASP 为 `正常完成`。
- 数值差异：`F` 差异 `1.000e-06 eV`；`E0` 差异 `1.000e-06 eV`。
- 迭代步数：ionic 13/13，electronic 123/123 (delta 0)。

本文件记录同一输入在 `MPI 32 ranks` 下的新跑结果；对于非完整收敛 case，仅作为程序行为和输出对比，不作为完整收敛精度声明。
