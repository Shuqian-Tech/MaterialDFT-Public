# MaterialDFT 与 VASP 6.5.1 的结果对比

## 结果摘要

| 程序 | 状态 | ionic steps | electronic iterations | per-ionic electronic iterations | time |
| --- | --- | ---: | ---: | --- | ---: |
| MaterialDFT | 正常完成 | 5 | 54 | `13, 14, 11, 8, 8` | `15 s` |
| VASP 6.5.1 | 正常完成 | 5 | 59 | `14, 16, 11, 9, 9` | `9.504 s` |


## OSZICAR 末行

MaterialDFT：

```text
   5 F= -.41603768E+02 E0= -.41603768E+02  d E =-.247465E+01
```

VASP 6.5.1：

```text
   5 F= -.41603768E+02 E0= -.41603768E+02  d E =-.247465E+01
```

## 对比结论

- 收敛状态：MaterialDFT 为 `正常完成`，VASP 为 `正常完成`。
- 数值差异：`F` 差异 `0 eV`；`E0` 差异 `0 eV`。
- 迭代步数：ionic 5/5，electronic 54/59 (delta -5)。

本文件记录同一输入在 `MPI 32 ranks` 下的新跑结果；对于非完整收敛 case，仅作为程序行为和输出对比，不作为完整收敛精度声明。
