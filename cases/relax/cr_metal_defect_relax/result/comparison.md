# MaterialDFT 与 VASP 6.5.1 的结果对比

## 结果摘要

| 程序 | 状态 | ionic steps | electronic iterations | per-ionic electronic iterations | time |
| --- | --- | ---: | ---: | --- | ---: |
| MaterialDFT | 程序完成，非完整收敛 (ionic_unconverged) | 5 | 50 | `10, 10, 10, 10, 10` | `19 s` |
| VASP 6.5.1 | 程序完成，非完整收敛 | 5 | 50 | `10, 10, 10, 10, 10` | `12.400 s` |


## OSZICAR 末行

MaterialDFT：

```text
   5 F= 0.97545142E+03 E0= 0.97546337E+03  d E =0.103629E+04
```

VASP 6.5.1：

```text
   5 F= -.29741162E+02 E0= -.29737553E+02  d E =0.284395E+02
```

## 对比结论

- 收敛状态：MaterialDFT 为 `程序完成，非完整收敛 (ionic_unconverged)`，VASP 为 `程序完成，非完整收敛`。
- 数值差异：`F` 差异 `1.01e+03 eV`；`E0` 差异 `1.01e+03 eV`。
- 迭代步数：ionic 5/5，electronic 50/50 (delta 0)。

本文件记录同一输入在 `MPI 32 ranks` 下的新跑结果；对于非完整收敛 case，仅作为程序行为和输出对比，不作为完整收敛精度声明。
