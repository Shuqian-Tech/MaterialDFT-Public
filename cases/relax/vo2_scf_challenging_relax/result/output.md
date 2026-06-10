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
ionic_steps=5
ionic_history_size=5
step=1 scf_converged=false ionic_converged=false total_energy=-29.992 free_energy=-29.992 zero_temp_energy=-29.9924 energy_change=-29.992 max_force=5.62001 has_stress=true pressure=3930.56
step=2 scf_converged=false ionic_converged=false total_energy=-17.8314 free_energy=-17.8314 zero_temp_energy=-17.8301 energy_change=12.1607 max_force=31.4157 has_stress=true pressure=5406.04
step=3 scf_converged=false ionic_converged=false total_energy=-29.3385 free_energy=-29.3385 zero_temp_energy=-29.3382 energy_change=0.653553 max_force=0.291623 has_stress=true pressure=4476.81
step=4 scf_converged=false ionic_converged=false total_energy=-29.34 free_energy=-29.34 zero_temp_energy=-29.3399 energy_change=0.652024 max_force=0.0734702 has_stress=true pressure=4468.9
step=5 scf_converged=false ionic_converged=true total_energy=-29.3401 free_energy=-29.3401 zero_temp_energy=-29.34 energy_change=0.651933 max_force=0.00580712 has_stress=true pressure=4468.53
```

## 迭代步数

| 指标 | 数值 |
| --- | ---: |
| ionic steps | 5 |
| electronic iterations | 30 |
| electronic iterations by ionic step | `6, 6, 6, 6, 6` |

## 运行时间

- MaterialDFT wall/recorded time：`23 s`

## OSZICAR 末行

```text
   5 F= -.29340077E+02 E0= -.29339984E+02  d E =0.651933E+00  mag=     0.7874
```

## 说明

该结果由本轮公开评测重新运行生成。完整运行输出未放入本目录；本文件只保留公开评测所需摘要。
