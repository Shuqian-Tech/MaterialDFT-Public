# MaterialDFT 与 VASP 6.5.1 的结果对比

## 结果摘要

| 程序 | 状态 | ionic steps | electronic iterations | per-ionic electronic iterations | time |
| --- | --- | ---: | ---: | --- | ---: |
| MaterialDFT | 正常完成 | 9 | 97 | `26, 6, 10, 6, 14, 16, 6, 7, 6` | `94 s` |
| VASP 6.5.1 | 正常完成 | 9 | 105 | `27, 8, 8, 7, 15, 17, 9, 8, 6` | `59.409 s` |


## OSZICAR 末行

MaterialDFT：

```text
   9 F= -.14094170E+02 E0= -.14087118E+02  d E =-.101533E-02
```

VASP 6.5.1：

```text
   9 F= -.14094183E+02 E0= -.14087130E+02  d E =-.143257E-02
```

## 对比结论

- 收敛状态：MaterialDFT 为 `正常完成`，VASP 为 `正常完成`。
- 数值差异：`F` 差异 `1.300e-05 eV`；`E0` 差异 `1.200e-05 eV`。
- 迭代步数：ionic 9/9，electronic 97/105 (delta -8)。

本文件记录同一输入在 `MPI 32 ranks` 下的新跑结果；对于非完整收敛 case，仅作为程序行为和输出对比，不作为完整收敛精度声明。
