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
scf_failed=true
termination=converged
ionic_steps=5
ionic_history_size=5
step=1 scf_converged=false ionic_converged=false total_energy=-110.458 free_energy=-110.458 zero_temp_energy=-110.458 energy_change=-110.458 max_force=0.577792 has_stress=true pressure=33.1319
step=2 scf_converged=false ionic_converged=false total_energy=-110.458 free_energy=-110.458 zero_temp_energy=-110.45 energy_change=-0.000474743 max_force=0.246983 has_stress=true pressure=37.7395
step=3 scf_converged=true ionic_converged=false total_energy=-110.469 free_energy=-110.469 zero_temp_energy=-110.457 energy_change=-0.0113861 max_force=0.144357 has_stress=true pressure=35.4732
step=4 scf_converged=true ionic_converged=false total_energy=-110.469 free_energy=-110.469 zero_temp_energy=-110.457 energy_change=-0.0114853 max_force=0.138227 has_stress=true pressure=35.8154
step=5 scf_converged=true ionic_converged=true total_energy=-110.471 free_energy=-110.471 zero_temp_energy=-110.458 energy_change=-0.00149589 max_force=0.0427608 has_stress=true pressure=34.9703
```

## 迭代步数

| 指标 | 数值 |
| --- | ---: |
| ionic steps | 5 |
| electronic iterations | 43 |
| electronic iterations by ionic step | `10, 10, 9, 6, 8` |

## 运行时间

- MaterialDFT wall/recorded time：`48 s`

## OSZICAR 末行

```text
   5 F= -.11047070E+03 E0= -.11045808E+03  d E =-.149589E-02
```

## 说明

该结果由本轮公开评测重新运行生成。完整运行输出未放入本目录；本文件只保留公开评测所需摘要。
