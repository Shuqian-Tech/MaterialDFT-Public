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
step=1 scf_converged=false ionic_converged=false total_energy=304.311 free_energy=304.311 zero_temp_energy=304.311 energy_change=304.311 max_force=6.00067 has_stress=true pressure=17660.2
step=2 scf_converged=false ionic_converged=false total_energy=318.777 free_energy=318.777 zero_temp_energy=318.763 energy_change=14.4659 max_force=16.6249 has_stress=true pressure=16060.6
step=3 scf_converged=false ionic_converged=false total_energy=303.318 free_energy=303.318 zero_temp_energy=303.309 energy_change=-0.993774 max_force=6.42733 has_stress=true pressure=17609.2
step=4 scf_converged=false ionic_converged=false total_energy=308.021 free_energy=308.021 zero_temp_energy=308.039 energy_change=4.70337 max_force=28.8067 has_stress=true pressure=17149.4
step=5 scf_converged=false ionic_converged=false total_energy=302.676 free_energy=302.676 zero_temp_energy=302.672 energy_change=-0.641916 max_force=5.27478 has_stress=true pressure=17535.1
```

## 迭代步数

| 指标 | 数值 |
| --- | ---: |
| ionic steps | 5 |
| electronic iterations | 50 |
| electronic iterations by ionic step | `10, 10, 10, 10, 10` |

## 运行时间

- MaterialDFT wall/recorded time：`38 s`

## OSZICAR 末行

```text
   5 F= 0.30267562E+03 E0= 0.30267196E+03  d E =-.641916E+00
```

## 说明

该结果由本轮公开评测重新运行生成。完整运行输出未放入本目录；本文件只保留公开评测所需摘要。
