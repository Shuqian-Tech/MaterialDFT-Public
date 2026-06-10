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
step=1 scf_converged=true ionic_converged=false total_energy=-41.9735 free_energy=-41.9735 zero_temp_energy=-41.9735 energy_change=-41.9735 max_force=2.30685e-30 has_stress=true pressure=405.624
step=2 scf_converged=true ionic_converged=false total_energy=-41.2469 free_energy=-41.2469 zero_temp_energy=-41.2469 energy_change=0.726588 max_force=8.2778e-30 has_stress=true pressure=-267.597
step=3 scf_converged=true ionic_converged=false total_energy=-43.1705 free_energy=-43.1705 zero_temp_energy=-43.1705 energy_change=-1.197 max_force=3.05045e-30 has_stress=true pressure=-17.1318
step=4 scf_converged=true ionic_converged=true total_energy=-43.1743 free_energy=-43.1743 zero_temp_energy=-43.1743 energy_change=-1.20077 max_force=2.42103e-30 has_stress=true pressure=-3.10431
```

## 迭代步数

| 指标 | 数值 |
| --- | ---: |
| ionic steps | 4 |
| electronic iterations | 41 |
| electronic iterations by ionic step | `13, 11, 9, 8` |

## 运行时间

- MaterialDFT wall/recorded time：`14 s`

## OSZICAR 末行

```text
   4 F= -.43174269E+02 E0= -.43174269E+02  d E =-.120077E+01
```

## 说明

该结果由本轮公开评测重新运行生成。完整运行输出未放入本目录；本文件只保留公开评测所需摘要。
