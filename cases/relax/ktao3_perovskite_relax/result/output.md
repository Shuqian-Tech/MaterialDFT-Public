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
scf_failed=false
termination=converged
ionic_steps=4
ionic_history_size=4
step=1 scf_converged=true ionic_converged=false total_energy=-40.5813 free_energy=-40.5813 zero_temp_energy=-40.5813 energy_change=-40.5813 max_force=4.83435e-30 has_stress=true pressure=209.081
step=2 scf_converged=true ionic_converged=false total_energy=-40.3302 free_energy=-40.3302 zero_temp_energy=-40.3302 energy_change=0.251096 max_force=4.34858e-30 has_stress=true pressure=-189.289
step=3 scf_converged=true ionic_converged=false total_energy=-40.919 free_energy=-40.919 zero_temp_energy=-40.919 energy_change=-0.337739 max_force=3.33877e-30 has_stress=true pressure=-5.57294
step=4 scf_converged=true ionic_converged=true total_energy=-40.9193 free_energy=-40.9193 zero_temp_energy=-40.9193 energy_change=-0.338064 max_force=2.36396e-30 has_stress=true pressure=-0.582318
```

## 迭代步数

| 指标 | 数值 |
| --- | ---: |
| ionic steps | 4 |
| electronic iterations | 37 |
| electronic iterations by ionic step | `13, 10, 8, 6` |

## 运行时间

- MaterialDFT wall/recorded time：`12 s`

## OSZICAR 末行

```text
   4 F= -.40919346E+02 E0= -.40919346E+02  d E =-.338064E+00
```

## 说明

该结果由本轮公开评测重新运行生成。完整运行输出未放入本目录；本文件只保留公开评测所需摘要。
