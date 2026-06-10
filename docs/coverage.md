# 覆盖范围

本公开包包含一组用于验证当前 MaterialDFT Linux x86_64 二进制程序的样例。样例库用于展示本包覆盖的 VASP-style static 与 relaxation 工作流。

当前样例库包含 500 个有结果记录的 cases：

| 工作流 | cases |
| --- | ---: |
| static SCF | 295 |
| relaxation | 205 |

对应的机器可读覆盖矩阵见 `../cases/coverage_matrix.json`。

## 材料与结构覆盖

| 类别 | cases |
| --- | ---: |
| oxide / perovskite | 98 |
| semiconductor | 96 |
| metal / elemental bulk | 68 |
| defect / supercell | 62 |
| insulator / ionic compound | 56 |
| layered / low-dimensional | 54 |
| magnetic / spin | 37 |
| molecule box | 22 |
| other documented structures | 7 |

按工作流拆分：

| 类别 | static | relaxation | 合计 |
| --- | ---: | ---: | ---: |
| oxide / perovskite | 64 | 34 | 98 |
| semiconductor | 68 | 28 | 96 |
| metal / elemental bulk | 42 | 26 | 68 |
| defect / supercell | 15 | 47 | 62 |
| insulator / ionic compound | 38 | 18 | 56 |
| layered / low-dimensional | 30 | 24 | 54 |
| magnetic / spin | 19 | 18 | 37 |
| molecule box | 18 | 4 | 22 |
| other documented structures | 1 | 6 | 7 |

这些 `POSCAR` 输入共涉及 53 种元素：

```text
Ag Al As B Ba Be Bi Br C Ca Cd Cl Co Cr Cu F Fe Ga Ge H Hf I In Ir K Li Mg Mn Mo N Na Nb Ni O P Pb Re Rh Ru S Sb Sc Se Si Sn Sr Ta Te Ti V W Zn Zr
```

当前样例库既包含小型 smoke-test 结构，也包含较大的超胞类输入。原子数范围为 2 到 33：

| 原子数 | cases |
| --- | ---: |
| <=2 | 62 |
| 3-4 | 135 |
| 5-8 | 241 |
| 9-16 | 50 |
| >16 | 12 |

## 输入特征覆盖

样例库使用 VASP-style `POSCAR`、`INCAR`、`POTCAR` 和 `KPOINTS` 输入。本公开包不分发 VASP `POTCAR` 文件；用户需要自行提供匹配的 VASP 格式 `POTCAR`。

部分输入特征按工作流拆分如下：

| 特征 | static | relaxation | 合计 |
| --- | ---: | ---: | ---: |
| `ISPIN=1` | 239 | 163 | 402 |
| `ISPIN=2` | 56 | 42 | 98 |
| `ISMEAR=-1` | 5 | 0 | 5 |
| `ISMEAR=-5` | 1 | 1 | 2 |
| `ISMEAR=0` | 185 | 118 | 303 |
| `ISMEAR=1` | 102 | 84 | 186 |
| `ISMEAR=2` | 2 | 2 | 4 |
| `ISIF=2` | 295 | 183 | 478 |
| `ISIF=3` | 0 | 22 | 22 |
| `LREAL=.TRUE.` | 5 | 4 | 9 |
| `LREAL=Auto` | 12 | 12 | 24 |
| `LREAL=default/not set` | 278 | 189 | 467 |

`KPOINTS` 覆盖如下：

| KPOINTS 类型 | static | relaxation | 合计 |
| --- | ---: | ---: | ---: |
| Gamma-centered / Gamma style | 250 | 159 | 409 |
| Monkhorst-Pack | 45 | 46 | 91 |

## 证据类别

本轮 public 结果统计如下。

| 证据类别 | static | relaxation | 合计 |
| --- | ---: | ---: | ---: |
| MPI 32 ranks comparison | 283 | 180 | 463 |
| boundary / non-complete convergence | 12 | 23 | 35 |
| VASP high-rank boundary evidence | 0 | 2 | 2 |

## 迭代步数对比

迭代步数统计只包含同时生成 MaterialDFT 与 VASP `OSZICAR` 的 MPI 32 ranks case。电子步数按 `OSZICAR` 中 `DAV:`/`RMM:` 等行统计，离子步数按 `F=` 汇总行统计。

| 指标 | 数值 |
| --- | ---: |
| 可比较 case | 498 |
| run 输出缺失 case | 0 |
| 历史高并行边界 case | 2 |
| ionic steps 相同 case | 495 |
| total electronic iterations 相同 case | 393 |
| per-ionic electronic iterations 完全相同 case | 392 |
| MaterialDFT electronic iterations 合计 | 12539 |
| VASP electronic iterations 合计 | 11725 |
| 合计差值 MaterialDFT - VASP | 814 |
| 单 case electronic iteration delta 范围 | -16 到 793 |

## 运行时间对比

| 指标 | 数值 |
| --- | ---: |
| MaterialDFT time 可用 case | 498 |
| VASP time 可用 case | 498 |
| MaterialDFT time 合计 | `13502.242 s` |
| VASP time 合计 | `5269.245 s` |

时间字段为已记录的运行时间；缺失外层计时时使用输出报告中的 `ΣLOOP` 或 `OUTCAR` elapsed。

## SCF 收敛与最终电子能量误差

收敛只按最后一个 `DAV/RMM` 电子步的 `|d eps| < EDIFF` 判断，且 MaterialDFT 与 VASP 两侧都满足才计为收敛。最终电子能量误差取双方最后一个 `DAV/RMM` 行的能量差，只统计双侧 SCF 收敛 case。

| 指标 | 数值 |
| --- | ---: |
| 可比较 case | 498 |
| 双侧 SCF 收敛 case | 463 |
| 双侧 SCF 未完整收敛 case | 35 |
| 最终电子能量误差平均值 | `0.000133367972 eV` |
| 最终电子能量误差中位数 | `7.27000007e-08 eV` |
| 最终电子能量误差最大值 | `0.0412012736 eV` |
| 最终电子能量误差最小值 | `0 eV` |

## MPI 说明

已有 `result/` 记录使用各 case README 和 `result/comparison.md` 中标注的 MPI 进程数。本地复现时建议使用对应 case 记录的 MPI 进程数，也可以通过 `NP` 覆盖运行：

```bash
NP=32 POTCAR=/path/to/POTCAR ./run.sh
```

小 case 主要用于正确性检查、smoke test 和输入兼容性检查，不应作为 MPI 性能结论。MPI 性能观察应选择中等或更大的 case，并在同一机器、MPI、BLAS/LAPACK 和 FFTW 环境下比较。
