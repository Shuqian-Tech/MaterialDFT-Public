# MaterialDFT 与 VASP 6.5.1 的结果对比

## 结果摘要

| 程序 | 状态 | ionic steps | electronic iterations | per-ionic electronic iterations | time |
| --- | --- | ---: | ---: | --- | ---: |
| MaterialDFT | 正常完成 | 1 | 6 | `6` | `3 s` |
| VASP 6.5.1 | 正常完成 | 1 | 6 | `6` | `1.134 s` |


## OSZICAR 末行

MaterialDFT：

```text
   1 F= -.18924115E+02 E0= -.18922823E+02  d E =-.189241E+02  mag=    -2.1144
```

VASP 6.5.1：

```text
   1 F= -.18917808E+02 E0= -.18916501E+02  d E =-.189178E+02  mag=    -2.0926
```

## 对比结论

- 收敛状态：MaterialDFT 为 `正常完成`，VASP 为 `正常完成`。
- 数值差异：`F` 差异 `0.00631 eV`；`E0` 差异 `0.00632 eV`。
- 迭代步数：ionic 1/1，electronic 6/6 (delta 0)。

本文件记录同一输入在 `MPI 32 ranks` 下的新跑结果；对于非完整收敛 case，仅作为程序行为和输出对比，不作为完整收敛精度声明。
