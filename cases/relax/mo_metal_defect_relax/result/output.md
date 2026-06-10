# MaterialDFT 输出结果

## 运行设置

- binary：`bin/materialdft`
- 平台：Linux x86_64
- MPI ranks：32
- workflow：relax

## 收敛摘要

```text
converged=false
stopped_by_nsw=true
scf_failed=true
termination=ionic_unconverged
ionic_steps=5
ionic_history_size=5
step=1 scf_converged=false ionic_converged=false total_energy=-71.5109 free_energy=-71.5109 zero_temp_energy=-71.506 energy_change=-71.5109 max_force=0.894561 has_stress=true pressure=-70.8185
step=2 scf_converged=true ionic_converged=false total_energy=-71.6806 free_energy=-71.6806 zero_temp_energy=-71.6656 energy_change=-0.169765 max_force=1.07761 has_stress=true pressure=-87.3023
step=3 scf_converged=true ionic_converged=false total_energy=-72.3559 free_energy=-72.3559 zero_temp_energy=-72.3614 energy_change=-0.845061 max_force=1.61823 has_stress=true pressure=-128.621
step=4 scf_converged=true ionic_converged=false total_energy=-72.9799 free_energy=-72.9799 zero_temp_energy=-72.9861 energy_change=-1.46905 max_force=1.14265 has_stress=true pressure=-134.429
step=5 scf_converged=true ionic_converged=false total_energy=-73.0928 free_energy=-73.0928 zero_temp_energy=-73.1008 energy_change=-1.58192 max_force=0.498918 has_stress=true pressure=-149.164
```

## 迭代步数

| 指标 | 数值 |
| --- | ---: |
| ionic steps | 5 |
| electronic iterations | 47 |
| electronic iterations by ionic step | `10, 9, 10, 10, 8` |

## 运行时间

- MaterialDFT wall/recorded time：`19 s`

## OSZICAR 末行

```text
   5 F= -.73092797E+02 E0= -.73100836E+02  d E =-.158192E+01
```

## 说明

该结果由本轮公开评测重新运行生成。完整运行输出未放入本目录；本文件只保留公开评测所需摘要。
