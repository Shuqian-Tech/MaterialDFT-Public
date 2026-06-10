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
step=1 scf_converged=false ionic_converged=false total_energy=-42.2917 free_energy=-42.2917 zero_temp_energy=-42.2634 energy_change=-42.2917 max_force=15.5503 has_stress=true pressure=440.778
step=2 scf_converged=false ionic_converged=false total_energy=-65.9643 free_energy=-65.9643 zero_temp_energy=-65.9643 energy_change=-23.6726 max_force=2.22804 has_stress=true pressure=-36.073
step=3 scf_converged=false ionic_converged=false total_energy=-67.2392 free_energy=-67.2392 zero_temp_energy=-67.2392 energy_change=-24.9475 max_force=1.01935 has_stress=true pressure=12.3092
step=4 scf_converged=true ionic_converged=false total_energy=-67.2394 free_energy=-67.2394 zero_temp_energy=-67.2394 energy_change=-24.9477 max_force=1.03807 has_stress=true pressure=12.5964
step=5 scf_converged=false ionic_converged=false total_energy=-67.4833 free_energy=-67.4833 zero_temp_energy=-67.4833 energy_change=-0.243935 max_force=0.658642 has_stress=true pressure=8.63569
```

## 迭代步数

| 指标 | 数值 |
| --- | ---: |
| ionic steps | 5 |
| electronic iterations | 50 |
| electronic iterations by ionic step | `10, 10, 10, 10, 10` |

## 运行时间

- MaterialDFT wall/recorded time：`49 s`

## OSZICAR 末行

```text
   5 F= -.67483289E+02 E0= -.67483289E+02  d E =-.243935E+00
```

## 说明

该结果由本轮公开评测重新运行生成。完整运行输出未放入本目录；本文件只保留公开评测所需摘要。
