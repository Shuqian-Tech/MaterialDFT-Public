# MaterialDFT 与 VASP 6.5.1 的结果对比

## 结果摘要

| 程序 | 状态 | ionic steps | electronic iterations | per-ionic electronic iterations | time |
| --- | --- | ---: | ---: | --- | ---: |
| MaterialDFT | 正常完成 | 4 | 41 | `17, 9, 9, 6` | `13 s` |
| VASP 6.5.1 | 正常完成 | 4 | 34 | `12, 8, 9, 5` | `6 s` |


## OSZICAR 末行

MaterialDFT：

```text
   4 F= -.28807949E+02 E0= -.28801366E+02  d E =-.133043E+00
```

VASP 6.5.1：

```text
   4 F= -.28808018E+02 E0= -.28801470E+02  d E =-.132776E+00
```

## 对比结论

- 收敛状态：MaterialDFT 为 `正常完成`，VASP 为 `正常完成`。
- 数值差异：`F` 差异 `6.900e-05 eV`；`E0` 差异 `0.000104 eV`。
- 迭代步数：ionic 4/4，electronic 41/34 (delta +7)。

本文件记录同一输入在 `MPI 32 ranks` 下的新跑结果；对于非完整收敛 case，仅作为程序行为和输出对比，不作为完整收敛精度声明。
