# MaterialDFT 与 VASP 6.5.1 的结果对比

## 结果摘要

| 程序 | 状态 | ionic steps | electronic iterations | per-ionic electronic iterations | time |
| --- | --- | ---: | ---: | --- | ---: |
| MaterialDFT | 正常完成 | 5 | 43 | `10, 10, 9, 6, 8` | `48 s` |
| VASP 6.5.1 | 正常完成 | 5 | 46 | `10, 10, 9, 9, 8` | `57.131 s` |


## OSZICAR 末行

MaterialDFT：

```text
   5 F= -.11047070E+03 E0= -.11045808E+03  d E =-.149589E-02
```

VASP 6.5.1：

```text
   5 F= -.11047079E+03 E0= -.11045795E+03  d E =-.390240E-02
```

## 对比结论

- 收敛状态：MaterialDFT 为 `正常完成`，VASP 为 `正常完成`。
- 数值差异：`F` 差异 `9.000e-05 eV`；`E0` 差异 `0.00013 eV`。
- 迭代步数：ionic 5/5，electronic 43/46 (delta -3)。

本文件记录同一输入在 `MPI 32 ranks` 下的新跑结果；对于非完整收敛 case，仅作为程序行为和输出对比，不作为完整收敛精度声明。
