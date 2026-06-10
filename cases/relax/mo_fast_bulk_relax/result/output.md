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
step=1 scf_converged=false ionic_converged=true total_energy=-21.6351 free_energy=-21.6351 zero_temp_energy=-21.637 energy_change=-21.6351 max_force=3.14266e-31 has_stress=true pressure=113.411
```

## 迭代步数

| 指标 | 数值 |
| --- | ---: |
| ionic steps | 1 |
| electronic iterations | 8 |
| electronic iterations by ionic step | `8` |

## 运行时间

- MaterialDFT wall/recorded time：`3 s`

## OSZICAR 末行

```text
   1 F= -.21635098E+02 E0= -.21636983E+02  d E =-.216351E+02
```

## 说明

该结果由本轮公开评测重新运行生成。完整运行输出未放入本目录；本文件只保留公开评测所需摘要。
