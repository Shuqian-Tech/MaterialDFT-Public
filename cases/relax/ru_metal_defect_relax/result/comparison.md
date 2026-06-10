# MaterialDFT 与 VASP 6.5.1 的结果对比

## 结果摘要

| 程序 | 状态 | ionic steps | electronic iterations | per-ionic electronic iterations | time |
| --- | --- | ---: | ---: | --- | ---: |
| MaterialDFT | 程序完成，非完整收敛 (ionic_unconverged) | 5 | 50 | `10, 10, 10, 10, 10` | `38 s` |
| VASP 6.5.1 | 程序完成，非完整收敛 | 5 | 49 | `10, 10, 10, 10, 9` | `27.288 s` |


## OSZICAR 末行

MaterialDFT：

```text
   5 F= 0.30267562E+03 E0= 0.30267196E+03  d E =-.641916E+00
```

VASP 6.5.1：

```text
   5 F= 0.30332728E+03 E0= 0.30331919E+03  d E =-.972567E+00
```

## 对比结论

- 收敛状态：MaterialDFT 为 `程序完成，非完整收敛 (ionic_unconverged)`，VASP 为 `程序完成，非完整收敛`。
- 数值差异：`F` 差异 `0.652 eV`；`E0` 差异 `0.647 eV`。
- 迭代步数：ionic 5/5，electronic 50/49 (delta +1)。

本文件记录同一输入在 `MPI 32 ranks` 下的新跑结果；对于非完整收敛 case，仅作为程序行为和输出对比，不作为完整收敛精度声明。
