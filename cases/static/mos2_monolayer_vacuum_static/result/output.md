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
total_energy=-20.3128
efermi=-2.00336
```

## SCF 收敛判据

- EDIFF：`1e-05`
- 最后一个 `DAV/RMM` 的 `|d eps|`：`5.4968e-06`
- 判定：收敛

## 迭代步数

| 指标 | 数值 |
| --- | ---: |
| ionic steps | 1 |
| electronic iterations | 15 |
| electronic iterations by ionic step | `15` |

## 运行时间

- MaterialDFT wall/recorded time：`4 s`

## OSZICAR 末行

```text
   1 F= -.20312837E+02 E0= -.20312340E+02  d E =-.994394E-03
```

## 说明

该结果由本轮公开评测重新运行生成。完整运行输出未放入本目录；本文件只保留公开评测所需摘要。
