# MaterialDFT 与 VASP 6.5.1 的结果对比

## 结果摘要

| 程序 | 状态 | ionic steps | electronic iterations | per-ionic electronic iterations | time |
| --- | --- | ---: | ---: | --- | ---: |
| MaterialDFT | 正常完成 | 5 | 30 | `6, 6, 6, 6, 6` | `22 s` |
| VASP 6.5.1 | 正常完成 | 4 | 24 | `6, 6, 6, 6` | `7.956 s` |


## OSZICAR 末行

MaterialDFT：

```text
   5 F= -.24184668E+02 E0= -.24176316E+02  d E =-.208941E+00  mag=    -0.0190
```

VASP 6.5.1：

```text
   4 F= -.24184663E+02 E0= -.24176301E+02  d E =-.453099E+00  mag=    -0.0020
```

## 对比结论

- 收敛状态：MaterialDFT 为 `正常完成`，VASP 为 `正常完成`。
- 数值差异：`F` 差异 `5.000e-06 eV`；`E0` 差异 `1.500e-05 eV`。
- 迭代步数：ionic 5/4，electronic 30/24 (delta +6)。

本文件记录同一输入在 `MPI 32 ranks` 下的新跑结果；对于非完整收敛 case，仅作为程序行为和输出对比，不作为完整收敛精度声明。
