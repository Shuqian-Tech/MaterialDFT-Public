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
ionic_steps=3
ionic_history_size=3
step=1 scf_converged=true ionic_converged=false total_energy=-38.1115 free_energy=-38.1115 zero_temp_energy=-38.1115 energy_change=-38.1115 max_force=2.77858e-30 has_stress=true pressure=128.547
step=2 scf_converged=true ionic_converged=false total_energy=-38.065 free_energy=-38.065 zero_temp_energy=-38.065 energy_change=0.0464723 max_force=3.57907e-30 has_stress=true pressure=-116.756
step=3 scf_converged=true ionic_converged=true total_energy=-38.2556 free_energy=-38.2556 zero_temp_energy=-38.2556 energy_change=-0.144069 max_force=6.18197e-30 has_stress=true pressure=-1.6373
```

## 迭代步数

| 指标 | 数值 |
| --- | ---: |
| ionic steps | 3 |
| electronic iterations | 31 |
| electronic iterations by ionic step | `14, 9, 8` |

## 运行时间

- MaterialDFT wall/recorded time：`8 s`

## OSZICAR 末行

```text
   3 F= -.38255564E+02 E0= -.38255564E+02  d E =-.144069E+00
```

## 说明

该结果由本轮公开评测重新运行生成。完整运行输出未放入本目录；本文件只保留公开评测所需摘要。
