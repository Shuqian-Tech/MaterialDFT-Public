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
ionic_steps=13
ionic_history_size=13
step=1 scf_converged=true ionic_converged=false total_energy=82.5781 free_energy=82.5781 zero_temp_energy=82.5839 energy_change=82.5781 max_force=2.31008e-31 has_stress=true pressure=19575.9
step=2 scf_converged=true ionic_converged=false total_energy=405.517 free_energy=405.517 zero_temp_energy=405.464 energy_change=322.939 max_force=6.77661e-31 has_stress=true pressure=-51.6629
step=3 scf_converged=true ionic_converged=false total_energy=398.211 free_energy=398.211 zero_temp_energy=398.161 energy_change=315.633 max_force=2.85829e-31 has_stress=true pressure=-29.0218
step=4 scf_converged=true ionic_converged=false total_energy=396.694 free_energy=396.694 zero_temp_energy=396.642 energy_change=314.115 max_force=5.58895e-31 has_stress=true pressure=-21.1639
step=5 scf_converged=true ionic_converged=false total_energy=379.844 free_energy=379.844 zero_temp_energy=379.845 energy_change=297.266 max_force=1.10547e-30 has_stress=true pressure=-726.597
step=6 scf_converged=true ionic_converged=false total_energy=7.90976 free_energy=7.90976 zero_temp_energy=7.91976 energy_change=-74.6683 max_force=6.6742e-30 has_stress=true pressure=-1104.55
step=7 scf_converged=true ionic_converged=false total_energy=-26.0104 free_energy=-26.0104 zero_temp_energy=-26.012 energy_change=-108.588 max_force=2.30303e-30 has_stress=true pressure=-553.512
step=8 scf_converged=true ionic_converged=false total_energy=-32.1323 free_energy=-32.1323 zero_temp_energy=-32.1283 energy_change=-114.71 max_force=1.85772e-30 has_stress=true pressure=-472.275
step=9 scf_converged=true ionic_converged=false total_energy=-31.1106 free_energy=-31.1106 zero_temp_energy=-31.0992 energy_change=-113.689 max_force=2.41464e-30 has_stress=true pressure=1667.29
step=10 scf_converged=true ionic_converged=false total_energy=-35.5614 free_energy=-35.5614 zero_temp_energy=-35.5561 energy_change=-118.139 max_force=9.46115e-31 has_stress=true pressure=-300.723
step=11 scf_converged=true ionic_converged=false total_energy=-36.3204 free_energy=-36.3204 zero_temp_energy=-36.3155 energy_change=-118.898 max_force=4.08047e-30 has_stress=true pressure=147.483
step=12 scf_converged=true ionic_converged=false total_energy=-36.4166 free_energy=-36.4166 zero_temp_energy=-36.4122 energy_change=-118.995 max_force=4.59411e-30 has_stress=true pressure=-30.5806
step=13 scf_converged=true ionic_converged=true total_energy=-36.4221 free_energy=-36.4221 zero_temp_energy=-36.4176 energy_change=-119 max_force=4.18694e-30 has_stress=true pressure=-2.15862
```

## 迭代步数

| 指标 | 数值 |
| --- | ---: |
| ionic steps | 13 |
| electronic iterations | 123 |
| electronic iterations by ionic step | `13, 13, 11, 9, 11, 9, 9, 8, 10, 8, 9, 7, 6` |

## 运行时间

- MaterialDFT wall/recorded time：`21 s`

## OSZICAR 末行

```text
  13 F= -.36422089E+02 E0= -.36417642E+02  d E =-.119000E+03
```

## 说明

该结果由本轮公开评测重新运行生成。完整运行输出未放入本目录；本文件只保留公开评测所需摘要。
