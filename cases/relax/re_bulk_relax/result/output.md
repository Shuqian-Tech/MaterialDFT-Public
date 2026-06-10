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
ionic_steps=11
ionic_history_size=11
step=1 scf_converged=true ionic_converged=false total_energy=118.951 free_energy=118.951 zero_temp_energy=118.963 energy_change=118.951 max_force=4.03152e-31 has_stress=true pressure=29948.2
step=2 scf_converged=true ionic_converged=false total_energy=240.283 free_energy=240.283 zero_temp_energy=240.3 energy_change=121.332 max_force=9.12415e-31 has_stress=true pressure=-39.4878
step=3 scf_converged=true ionic_converged=false total_energy=207.646 free_energy=207.646 zero_temp_energy=207.718 energy_change=88.6948 max_force=5.92538e-31 has_stress=true pressure=-30.3515
step=4 scf_converged=true ionic_converged=false total_energy=200.032 free_energy=200.032 zero_temp_energy=200.133 energy_change=81.0805 max_force=6.80256e-31 has_stress=true pressure=-22.177
step=5 scf_converged=true ionic_converged=false total_energy=194.998 free_energy=194.998 zero_temp_energy=195.109 energy_change=76.0462 max_force=3.52636e-31 has_stress=true pressure=-10.4447
step=6 scf_converged=true ionic_converged=false total_energy=82.313 free_energy=82.313 zero_temp_energy=82.3119 energy_change=-36.6384 max_force=4.3725e-31 has_stress=true pressure=-410.683
step=7 scf_converged=true ionic_converged=false total_energy=-33.3781 free_energy=-33.3781 zero_temp_energy=-33.3775 energy_change=-152.329 max_force=2.8674e-30 has_stress=true pressure=-925.151
step=8 scf_converged=true ionic_converged=false total_energy=-47.6058 free_energy=-47.6058 zero_temp_energy=-47.5995 energy_change=-166.557 max_force=1.03433e-30 has_stress=true pressure=715.591
step=9 scf_converged=true ionic_converged=false total_energy=-48.7666 free_energy=-48.7666 zero_temp_energy=-48.7652 energy_change=-167.718 max_force=2.29851e-31 has_stress=true pressure=-229.552
step=10 scf_converged=true ionic_converged=false total_energy=-49.1023 free_energy=-49.1023 zero_temp_energy=-49.0976 energy_change=-168.054 max_force=1.65985e-30 has_stress=true pressure=-53.0706
step=11 scf_converged=true ionic_converged=true total_energy=-49.1173 free_energy=-49.1173 zero_temp_energy=-49.1119 energy_change=-168.069 max_force=7.5142e-31 has_stress=true pressure=1.91666
```

## 迭代步数

| 指标 | 数值 |
| --- | ---: |
| ionic steps | 11 |
| electronic iterations | 126 |
| electronic iterations by ionic step | `13, 15, 12, 10, 11, 24, 10, 9, 9, 7, 6` |

## 运行时间

- MaterialDFT wall/recorded time：`21 s`

## OSZICAR 末行

```text
  11 F= -.49117276E+02 E0= -.49111937E+02  d E =-.168069E+03
```

## 说明

该结果由本轮公开评测重新运行生成。完整运行输出未放入本目录；本文件只保留公开评测所需摘要。
