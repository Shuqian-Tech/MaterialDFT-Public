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
step=1 scf_converged=false ionic_converged=false total_energy=-60.8409 free_energy=-60.8409 zero_temp_energy=-60.822 energy_change=-60.8409 max_force=97.2473 has_stress=true pressure=1403.28
step=2 scf_converged=false ionic_converged=false total_energy=23.0748 free_energy=23.0748 zero_temp_energy=23.0805 energy_change=83.9156 max_force=393.93 has_stress=true pressure=2790.17
step=3 scf_converged=false ionic_converged=false total_energy=49.2249 free_energy=49.2249 zero_temp_energy=49.2289 energy_change=110.066 max_force=382.44 has_stress=true pressure=4109.01
step=4 scf_converged=false ionic_converged=false total_energy=70.5823 free_energy=70.5823 zero_temp_energy=70.5978 energy_change=131.423 max_force=613.285 has_stress=true pressure=3352.57
step=5 scf_converged=false ionic_converged=false total_energy=975.451 free_energy=975.451 zero_temp_energy=975.463 energy_change=1036.29 max_force=6006.5 has_stress=true pressure=11370.7
```

## 迭代步数

| 指标 | 数值 |
| --- | ---: |
| ionic steps | 5 |
| electronic iterations | 50 |
| electronic iterations by ionic step | `10, 10, 10, 10, 10` |

## 运行时间

- MaterialDFT wall/recorded time：`19 s`

## OSZICAR 末行

```text
   5 F= 0.97545142E+03 E0= 0.97546337E+03  d E =0.103629E+04
```

## 说明

该结果由本轮公开评测重新运行生成。完整运行输出未放入本目录；本文件只保留公开评测所需摘要。
