# MaterialDFT 与 VASP 6.5.1 的结果对比

## 结果摘要

| 程序 | 状态 | ionic steps | electronic iterations | per-ionic electronic iterations | time |
| --- | --- | ---: | ---: | --- | ---: |
| MaterialDFT | 正常完成 | 4 | 52 | `18, 13, 14, 7` | `18 s` |
| VASP 6.5.1 | 正常完成 | 4 | 67 | `19, 17, 24, 7` | `8.873 s` |


## OSZICAR 末行

MaterialDFT：

```text
   4 F= -.19234233E+02 E0= -.19227927E+02  d E =-.963798E+01
```

VASP 6.5.1：

```text
   4 F= -.19234233E+02 E0= -.19227926E+02  d E =-.963798E+01
```

## 对比结论

- 收敛状态：MaterialDFT 为 `正常完成`，VASP 为 `正常完成`。
- 数值差异：`F` 差异 `0 eV`；`E0` 差异 `1.000e-06 eV`。
- 迭代步数：ionic 4/4，electronic 52/67 (delta -15)。

本文件记录同一输入在 `MPI 32 ranks` 下的新跑结果；对于非完整收敛 case，仅作为程序行为和输出对比，不作为完整收敛精度声明。
