# MaterialDFT 输出结果

## 运行设置

- binary：`bin/materialdft`
- 平台：Linux x86_64
- MPI ranks：32
- workflow：relax

## 收敛摘要

```text
converged=true
stopped_by_nsw=false
scf_failed=true
termination=converged
ionic_steps=1
ionic_history_size=1
step=1 scf_converged=false ionic_converged=true total_energy=-4.58427 free_energy=-4.58427 zero_temp_energy=-4.58814 energy_change=-4.58427 max_force=2.32113e-33 has_stress=true pressure=-14.34
```

## 迭代步数

| 指标 | 数值 |
| --- | ---: |
| ionic steps | 1 |
| electronic iterations | 8 |
| electronic iterations by ionic step | `8` |

## 运行时间

- MaterialDFT wall/recorded time：`2 s`

## OSZICAR 末行

```text
   1 F= -.45842728E+01 E0= -.45881381E+01  d E =-.458427E+01
```

## 说明

该结果由本轮公开评测重新运行生成。完整运行输出未放入本目录；本文件只保留公开评测所需摘要。
