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
ionic_steps=7
ionic_history_size=7
step=1 scf_converged=true ionic_converged=false total_energy=-21.8896 free_energy=-21.8896 zero_temp_energy=-21.8896 energy_change=-21.8896 max_force=0.0751645 has_stress=true pressure=-378.263
step=2 scf_converged=true ionic_converged=false total_energy=-21.8908 free_energy=-21.8908 zero_temp_energy=-21.8908 energy_change=-0.00115877 max_force=0.0845419 has_stress=true pressure=-378.324
step=3 scf_converged=true ionic_converged=false total_energy=-21.8951 free_energy=-21.8951 zero_temp_energy=-21.8951 energy_change=-0.00543461 max_force=0.111682 has_stress=true pressure=-378.255
step=4 scf_converged=true ionic_converged=false total_energy=-21.907 free_energy=-21.907 zero_temp_energy=-21.907 energy_change=-0.0173595 max_force=0.160935 has_stress=true pressure=-377.886
step=5 scf_converged=true ionic_converged=false total_energy=-21.9419 free_energy=-21.9419 zero_temp_energy=-21.9419 energy_change=-0.052272 max_force=0.23403 has_stress=true pressure=-376.13
step=6 scf_converged=true ionic_converged=false total_energy=-22.0342 free_energy=-22.0342 zero_temp_energy=-22.0342 energy_change=-0.144514 max_force=0.273623 has_stress=true pressure=-371.199
step=7 scf_converged=true ionic_converged=true total_energy=-22.156 free_energy=-22.156 zero_temp_energy=-22.156 energy_change=-0.266385 max_force=0.0262236 has_stress=true pressure=-365.198
```

## 迭代步数

| 指标 | 数值 |
| --- | ---: |
| ionic steps | 7 |
| electronic iterations | 54 |
| electronic iterations by ionic step | `13, 5, 6, 6, 7, 8, 9` |

## 运行时间

- MaterialDFT wall/recorded time：`12 s`

## OSZICAR 末行

```text
   7 F= -.22156030E+02 E0= -.22156030E+02  d E =-.266385E+00
```

## 说明

该结果由本轮公开评测重新运行生成。完整运行输出未放入本目录；本文件只保留公开评测所需摘要。
