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
ionic_steps=5
ionic_history_size=5
step=1 scf_converged=true ionic_converged=false total_energy=-39.1291 free_energy=-39.1291 zero_temp_energy=-39.1291 energy_change=-39.1291 max_force=5.84849e-30 has_stress=true pressure=612.679
step=2 scf_converged=true ionic_converged=false total_energy=-37.2977 free_energy=-37.2977 zero_temp_energy=-37.2977 energy_change=1.83146 max_force=9.497e-30 has_stress=true pressure=-326.273
step=3 scf_converged=true ionic_converged=false total_energy=-41.5817 free_energy=-41.5817 zero_temp_energy=-41.5817 energy_change=-2.45259 max_force=4.50987e-30 has_stress=true pressure=-37.7381
step=4 scf_converged=true ionic_converged=false total_energy=-41.6025 free_energy=-41.6025 zero_temp_energy=-41.6025 energy_change=-2.47339 max_force=3.7303e-30 has_stress=true pressure=-9.30831
step=5 scf_converged=true ionic_converged=true total_energy=-41.6038 free_energy=-41.6038 zero_temp_energy=-41.6038 energy_change=-2.47465 max_force=9.26711e-30 has_stress=true pressure=0.115117
```

## 迭代步数

| 指标 | 数值 |
| --- | ---: |
| ionic steps | 5 |
| electronic iterations | 54 |
| electronic iterations by ionic step | `13, 14, 11, 8, 8` |

## 运行时间

- MaterialDFT wall/recorded time：`15 s`

## OSZICAR 末行

```text
   5 F= -.41603768E+02 E0= -.41603768E+02  d E =-.247465E+01
```

## 说明

该结果由本轮公开评测重新运行生成。完整运行输出未放入本目录；本文件只保留公开评测所需摘要。
