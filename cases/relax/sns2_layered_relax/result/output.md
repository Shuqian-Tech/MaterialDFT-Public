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
ionic_steps=6
ionic_history_size=6
step=1 scf_converged=true ionic_converged=false total_energy=1.06959 free_energy=1.06959 zero_temp_energy=1.06959 energy_change=1.06959 max_force=12.0293 has_stress=true pressure=1053.79
step=2 scf_converged=true ionic_converged=false total_energy=-10.3592 free_energy=-10.3592 zero_temp_energy=-10.3592 energy_change=-11.4288 max_force=5.67131 has_stress=true pressure=376.676
step=3 scf_converged=true ionic_converged=false total_energy=-12.237 free_energy=-12.237 zero_temp_energy=-12.237 energy_change=-13.3066 max_force=2.70075 has_stress=true pressure=188.611
step=4 scf_converged=true ionic_converged=false total_energy=-12.1952 free_energy=-12.1952 zero_temp_energy=-12.1952 energy_change=-13.2648 max_force=2.33857 has_stress=true pressure=-22.2638
step=5 scf_converged=true ionic_converged=false total_energy=-12.7858 free_energy=-12.7858 zero_temp_energy=-12.7858 energy_change=-13.8554 max_force=0.347902 has_stress=true pressure=47.4562
step=6 scf_converged=true ionic_converged=true total_energy=-12.7962 free_energy=-12.7962 zero_temp_energy=-12.7962 energy_change=-13.8658 max_force=0.0288553 has_stress=true pressure=62.5789
```

## 迭代步数

| 指标 | 数值 |
| --- | ---: |
| ionic steps | 6 |
| electronic iterations | 56 |
| electronic iterations by ionic step | `14, 9, 8, 9, 8, 8` |

## 运行时间

- MaterialDFT wall/recorded time：`16 s`

## OSZICAR 末行

```text
   6 F= -.12796183E+02 E0= -.12796183E+02  d E =-.138658E+02
```

## 说明

该结果由本轮公开评测重新运行生成。完整运行输出未放入本目录；本文件只保留公开评测所需摘要。
