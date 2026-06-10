# MaterialDFT 与 VASP 6.5.1 的结果对比

## 结果摘要

| 程序 | 状态 | ionic steps | electronic iterations | per-ionic electronic iterations | time |
| --- | --- | ---: | ---: | --- | ---: |
| MaterialDFT | 正常完成 | 7 | 72 | `12, 16, 11, 10, 8, 8, 7` | `11 s` |
| VASP 6.5.1 | 正常完成 | 7 | 88 | `12, 27, 15, 11, 8, 8, 7` | `5.080 s` |


## OSZICAR 末行

MaterialDFT：

```text
   7 F= -.15618708E+01 E0= -.15648494E+01  d E =-.103103E+03
```

VASP 6.5.1：

```text
   7 F= -.15618867E+01 E0= -.15648986E+01  d E =-.103103E+03
```

## 对比结论

- 收敛状态：MaterialDFT 为 `正常完成`，VASP 为 `正常完成`。
- 数值差异：`F` 差异 `1.590e-05 eV`；`E0` 差异 `4.920e-05 eV`。
- 迭代步数：ionic 7/7，electronic 72/88 (delta -16)。

本文件记录同一输入在 `MPI 32 ranks` 下的新跑结果；对于非完整收敛 case，仅作为程序行为和输出对比，不作为完整收敛精度声明。
