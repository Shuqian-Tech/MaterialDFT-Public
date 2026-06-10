# MaterialDFT 输出结果

## 运行设置

- binary：`bin/materialdft`
- 平台：Linux x86_64
- MPI ranks：32
- workflow：static

## 收敛摘要

```text
converged=true
iterations=21
total_energy=-8.28692
efermi=0.250846
```

## SCF 收敛判据

- EDIFF：`1e-05`
- 最后一个 `DAV/RMM` 的 `|d eps|`：`7.4242e-08`
- 判定：收敛

## 迭代步数

| 指标 | 数值 |
| --- | ---: |
| ionic steps | 1 |
| electronic iterations | 21 |
| electronic iterations by ionic step | `21` |

## 运行时间

- MaterialDFT wall/recorded time：`20 s`

## OSZICAR 末行

```text
   1 F= -.82869187E+01 E0= -.82800724E+01  d E =-.136925E-01
```

## 说明

该结果由本轮公开评测重新运行生成。完整运行输出未放入本目录；本文件只保留公开评测所需摘要。
