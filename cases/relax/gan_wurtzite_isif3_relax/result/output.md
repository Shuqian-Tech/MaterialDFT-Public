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
scf_failed=false
termination=ionic_unconverged
ionic_steps=3
ionic_history_size=3
step=1 scf_converged=true ionic_converged=false total_energy=-22.5432 free_energy=-22.5432 zero_temp_energy=-22.5432 energy_change=-22.5432 max_force=0.88604 has_stress=true pressure=102.315
step=2 scf_converged=true ionic_converged=false total_energy=-22.6385 free_energy=-22.6385 zero_temp_energy=-22.6385 energy_change=-0.0952602 max_force=0.435714 has_stress=true pressure=26.7419
step=3 scf_converged=true ionic_converged=false total_energy=-22.6536 free_energy=-22.6536 zero_temp_energy=-22.6536 energy_change=-0.110331 max_force=0.408461 has_stress=true pressure=-14.4018
```

## 迭代步数

| 指标 | 数值 |
| --- | ---: |
| ionic steps | 3 |
| electronic iterations | 24 |
| electronic iterations by ionic step | `12, 6, 6` |

## 运行时间

- MaterialDFT wall/recorded time：`1.940 s`

## OSZICAR 末行

```text
   3 F= -.22653551E+02 E0= -.22653551E+02  d E =-.110331E+00
```

## 说明

该结果由本轮公开评测重新运行生成。完整运行输出未放入本目录；本文件只保留公开评测所需摘要。
