# MaterialDFT 与 VASP 6.5.1 的结果对比

## 结果摘要

| 程序 | 状态 | ionic steps | electronic iterations | per-ionic electronic iterations | time |
| --- | --- | ---: | ---: | --- | ---: |
| MaterialDFT | 正常完成 | 11 | 126 | `13, 15, 12, 10, 11, 24, 10, 9, 9, 7, 6` | `21 s` |
| VASP 6.5.1 | 程序完成，非完整收敛 | 7 | 130 | `13, 15, 12, 10, 11, 23, 10` | `23 s` |


## OSZICAR 末行

MaterialDFT：

```text
  11 F= -.49117276E+02 E0= -.49111937E+02  d E =-.168069E+03
```

VASP 6.5.1：

```text
   7 F= -.33378424E+02 E0= -.33377857E+02  d E =-.152330E+03
```

## 对比结论

- 收敛状态：MaterialDFT 为 `正常完成`，VASP 为 `程序完成，非完整收敛`。
- 数值差异：`F` 差异 `15.7 eV`；`E0` 差异 `15.7 eV`。
- 迭代步数：ionic 11/7，electronic 126/130 (delta -4)。

本文件记录同一输入在 `MPI 32 ranks` 下的新跑结果；对于非完整收敛 case，仅作为程序行为和输出对比，不作为完整收敛精度声明。
