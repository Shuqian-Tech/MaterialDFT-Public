# MaterialDFT 输出结果

## 运行设置

- binary：`bin/materialdft`
- 平台：Linux x86_64
- MPI ranks：32
- workflow：static

## 收敛摘要

```text
converged=true
iterations=17
total_energy=-14.9419
efermi=-3.50614
```

## SCF 收敛判据

- EDIFF：`1e-05`
- 最后一个 `DAV/RMM` 的 `|d eps|`：`8.5927e-06`
- 判定：收敛

## 迭代步数

| 指标 | 数值 |
| --- | ---: |
| ionic steps | 1 |
| electronic iterations | 17 |
| electronic iterations by ionic step | `17` |

## 运行时间

- MaterialDFT wall/recorded time：`13 s`

## OSZICAR 末行

```text
   1 F= -.14941875E+02 E0= -.14935911E+02  d E =-.119279E-01
```

## 说明

该结果由本轮公开评测重新运行生成。完整运行输出未放入本目录；本文件只保留公开评测所需摘要。
