# MaterialDFT 输出结果

## 运行设置

- binary：`bin/materialdft`
- 平台：Linux x86_64
- MPI ranks：32
- workflow：static

## 收敛摘要

```text
converged=true
iterations=15
total_energy=-72.3553
efermi=2.58804
```

## SCF 收敛判据

- EDIFF：`1e-06`
- 最后一个 `DAV/RMM` 的 `|d eps|`：`4.301e-07`
- 判定：收敛

## 迭代步数

| 指标 | 数值 |
| --- | ---: |
| ionic steps | 1 |
| electronic iterations | 15 |
| electronic iterations by ionic step | `15` |

## 运行时间

- MaterialDFT wall/recorded time：`95 s`

## OSZICAR 末行

```text
   1 F= -.72355285E+02 E0= -.72316740E+02  d E =-.770899E-01
```

## 说明

该结果由本轮公开评测重新运行生成。完整运行输出未放入本目录；本文件只保留公开评测所需摘要。
