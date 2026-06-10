# MaterialDFT 与 VASP 6.5.1 的结果对比

## 结果摘要

| 程序 | 状态 | ionic steps | electronic iterations | per-ionic electronic iterations | time |
| --- | --- | ---: | ---: | --- | ---: |
| MaterialDFT | 程序完成，非完整收敛 (ionic_unconverged) | 3 | 39 | `19, 11, 9` | `3.310 s` |
| VASP 6.5.1 | 程序完成，非完整收敛 | 3 | 37 | `18, 10, 9` | `7 s` |


## OSZICAR 末行

MaterialDFT：

```text
   3 F= -.16032795E+02 E0= -.16032795E+02  d E =-.159900E-01
```

VASP 6.5.1：

```text
   3 F= -.16032802E+02 E0= -.16032802E+02  d E =-.159991E-01
```

## 对比结论

- 收敛状态：MaterialDFT 为 `程序完成，非完整收敛 (ionic_unconverged)`，VASP 为 `程序完成，非完整收敛`。
- 数值差异：`F` 差异 `7.000e-06 eV`；`E0` 差异 `7.000e-06 eV`。
- 迭代步数：ionic 3/3，electronic 39/37 (delta +2)。

本文件记录同一输入在 `MPI 32 ranks` 下的新跑结果；对于非完整收敛 case，仅作为程序行为和输出对比，不作为完整收敛精度声明。
