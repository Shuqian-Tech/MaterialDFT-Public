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
step=1 scf_converged=true ionic_converged=false total_energy=-12.3598 free_energy=-12.3598 zero_temp_energy=-12.3539 energy_change=-12.3598 max_force=16.8278 has_stress=true pressure=551.961
step=2 scf_converged=true ionic_converged=false total_energy=-20.4057 free_energy=-20.4057 zero_temp_energy=-20.3994 energy_change=-8.04588 max_force=2.31748 has_stress=true pressure=-65.6124
step=3 scf_converged=true ionic_converged=false total_energy=-21.035 free_energy=-21.035 zero_temp_energy=-21.035 energy_change=-8.67517 max_force=0.1287 has_stress=true pressure=27.1235
step=4 scf_converged=true ionic_converged=false total_energy=-21.0358 free_energy=-21.0358 zero_temp_energy=-21.0358 energy_change=-8.67596 max_force=0.0416715 has_stress=true pressure=29.4266
step=5 scf_converged=true ionic_converged=true total_energy=-21.0359 free_energy=-21.0359 zero_temp_energy=-21.0359 energy_change=-8.67605 max_force=0.000305075 has_stress=true pressure=30.5259
```

## 迭代步数

| 指标 | 数值 |
| --- | ---: |
| ionic steps | 5 |
| electronic iterations | 53 |
| electronic iterations by ionic step | `18, 16, 8, 6, 5` |

## 运行时间

- MaterialDFT wall/recorded time：`17 s`

## OSZICAR 末行

```text
   5 F= -.21035883E+02 E0= -.21035883E+02  d E =-.867605E+01
```

## 说明

该结果由本轮公开评测重新运行生成。完整运行输出未放入本目录；本文件只保留公开评测所需摘要。
