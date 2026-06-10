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
ionic_steps=9
ionic_history_size=9
step=1 scf_converged=true ionic_converged=false total_energy=-14.0684 free_energy=-14.0684 zero_temp_energy=-14.0589 energy_change=-14.0684 max_force=0.223093 has_stress=true pressure=-15.9677
step=2 scf_converged=true ionic_converged=false total_energy=-14.0729 free_energy=-14.0729 zero_temp_energy=-14.0647 energy_change=-0.00450836 max_force=0.190031 has_stress=true pressure=-15.5753
step=3 scf_converged=true ionic_converged=false total_energy=-14.0776 free_energy=-14.0776 zero_temp_energy=-14.0706 energy_change=-0.00921697 max_force=0.18204 has_stress=true pressure=-14.4244
step=4 scf_converged=true ionic_converged=false total_energy=-14.0816 free_energy=-14.0816 zero_temp_energy=-14.0746 energy_change=-0.00399567 max_force=0.172381 has_stress=true pressure=-14.158
step=5 scf_converged=true ionic_converged=false total_energy=-14.0902 free_energy=-14.0902 zero_temp_energy=-14.0832 energy_change=-0.012582 max_force=0.137138 has_stress=true pressure=-13.2643
step=6 scf_converged=true ionic_converged=false total_energy=-14.0897 free_energy=-14.0897 zero_temp_energy=-14.0827 energy_change=-0.0120995 max_force=0.148526 has_stress=true pressure=-11.2364
step=7 scf_converged=true ionic_converged=false total_energy=-14.0932 free_energy=-14.0932 zero_temp_energy=-14.0861 energy_change=-0.0155183 max_force=0.0966056 has_stress=true pressure=-12.3419
step=8 scf_converged=true ionic_converged=false total_energy=-14.0931 free_energy=-14.0931 zero_temp_energy=-14.086 energy_change=8.48085e-05 max_force=0.0923017 has_stress=true pressure=-13.3122
step=9 scf_converged=true ionic_converged=true total_energy=-14.0942 free_energy=-14.0942 zero_temp_energy=-14.0871 energy_change=-0.00101533 max_force=0.00328557 has_stress=true pressure=-12.8665
```

## 迭代步数

| 指标 | 数值 |
| --- | ---: |
| ionic steps | 9 |
| electronic iterations | 97 |
| electronic iterations by ionic step | `26, 6, 10, 6, 14, 16, 6, 7, 6` |

## 运行时间

- MaterialDFT wall/recorded time：`94 s`

## OSZICAR 末行

```text
   9 F= -.14094170E+02 E0= -.14087118E+02  d E =-.101533E-02
```

## 说明

该结果由本轮公开评测重新运行生成。完整运行输出未放入本目录；本文件只保留公开评测所需摘要。
