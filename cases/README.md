# MaterialDFT 样例库

这里收录一组 VASP-style 输入，用于展示 MaterialDFT 当前支持的 static 与 relaxation 工作流。每个 case 都包含：

- `input/`：`POSCAR`、`INCAR`、`KPOINTS`、`POTCAR.PLACEHOLDER`、`POTCAR.meta.json`
- `run.sh`：使用本包 `bin/materialdft` 运行该 case
- `result/output.md`：MaterialDFT 本地运行结果摘要
- `result/comparison.md`：与 VASP 6.5.1 的本地运行对比

本包不分发 `POTCAR`。运行这些样例时，请提供与输入匹配、符合 VASP 格式的 `POTCAR`。

## 覆盖摘要

当前样例库包含 500 个有结果记录的 cases，其中 static 295 个、relaxation 205 个。覆盖范围包括金属、半导体、绝缘体、钙钛矿/氧化物、层状材料、分子盒、缺陷/超胞和磁性体系。

公开覆盖矩阵和证据口径见 `../docs/coverage.md`。

当前统计：498 个 public case 同时有 MaterialDFT 和 VASP MPI 32 ranks 可比输出，0 个 case 缺少 run 输出，2 个为历史报错边界证据。

本地复现时建议使用对应 case 记录的 MPI ranks，也可以通过 `NP` 覆盖运行，例如：

```bash
NP=32 POTCAR=/path/to/POTCAR ./run.sh
```

## 迭代步数统计

| 指标 | cases / 数值 |
| --- | ---: |
| 可比较 case | 498 |
| ionic steps 相同 | 495 |
| total electronic iterations 相同 | 393 |
| per-ionic electronic iterations 完全相同 | 392 |
| MaterialDFT electronic iterations 合计 | 12539 |
| VASP electronic iterations 合计 | 11725 |
| 合计差值 MaterialDFT - VASP | 814 |
| 单 case 差值范围 | -16 到 793 |

## 运行时间统计

| 指标 | 数值 |
| --- | ---: |
| MaterialDFT time 可用 case | 498 |
| VASP time 可用 case | 498 |
| MaterialDFT time 合计 | `13502.242 s` |
| VASP time 合计 | `5269.245 s` |

## SCF 收敛与最终电子能量误差

| 指标 | 数值 |
| --- | ---: |
| 可比较 case | 498 |
| 双侧 SCF 收敛 case | 463 |
| 双侧 SCF 未完整收敛 case | 35 |
| 最终电子能量误差平均值 | `0.000133367972 eV` |
| 最终电子能量误差中位数 | `7.27000007e-08 eV` |
| 最终电子能量误差最大值 | `0.0412012736 eV` |
| 最终电子能量误差最小值 | `0 eV` |

## 样例总览

完整机器可读列表见 `coverage_matrix.json`。每个 case 目录内的 `README.md` 与 `result/comparison.md` 记录该 case 的输入、运行方式、迭代步数和数值对比摘要。
