# MaterialDFT 与 VASP 6.5.1 的结果对比

## 结果摘要

| 程序 | 状态 | ionic steps | electronic iterations | per-ionic electronic iterations | time |
| --- | --- | ---: | ---: | --- | ---: |
| MaterialDFT | 正常完成 | 4 | 37 | `14, 9, 9, 5` | `11 s` |
| VASP 6.5.1 | 正常完成 | 4 | 35 | `12, 9, 9, 5` | `13.071 s` |


## OSZICAR 末行

MaterialDFT：

```text
   4 F= -.35194737E+02 E0= -.35199363E+02  d E =-.229986E+00
```

VASP 6.5.1：

```text
   4 F= -.35194735E+02 E0= -.35199359E+02  d E =-.229939E+00
```

## 对比结论

- 收敛状态：MaterialDFT 为 `正常完成`，VASP 为 `正常完成`。
- 数值差异：`F` 差异 `2.000e-06 eV`；`E0` 差异 `4.000e-06 eV`。
- 迭代步数：ionic 4/4，electronic 37/35 (delta +2)。

本文件记录同一输入在 `MPI 32 ranks` 下的新跑结果；对于非完整收敛 case，仅作为程序行为和输出对比，不作为完整收敛精度声明。
