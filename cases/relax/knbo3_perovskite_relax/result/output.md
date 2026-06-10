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
step=1 scf_converged=true ionic_converged=false total_energy=-37.4822 free_energy=-37.4822 zero_temp_energy=-37.4822 energy_change=-37.4822 max_force=2.76685e-30 has_stress=true pressure=250.364
step=2 scf_converged=true ionic_converged=false total_energy=-37.2471 free_energy=-37.2471 zero_temp_energy=-37.2471 energy_change=0.235066 max_force=1.21384e-29 has_stress=true pressure=-194.041
step=3 scf_converged=true ionic_converged=false total_energy=-37.9786 free_energy=-37.9786 zero_temp_energy=-37.9786 energy_change=-0.496427 max_force=2.26829e-30 has_stress=true pressure=-6.6321
step=4 scf_converged=true ionic_converged=true total_energy=-37.9791 free_energy=-37.9791 zero_temp_energy=-37.9791 energy_change=-0.496942 max_force=4.92308e-30 has_stress=true pressure=-0.953988
```

## 迭代步数

| 指标 | 数值 |
| --- | ---: |
| ionic steps | 4 |
| electronic iterations | 40 |
| electronic iterations by ionic step | `13, 11, 10, 6` |

## 运行时间

- MaterialDFT wall/recorded time：`12 s`

## OSZICAR 末行

```text
   4 F= -.37979113E+02 E0= -.37979113E+02  d E =-.496942E+00
```

## 说明

该结果由本轮公开评测重新运行生成。完整运行输出未放入本目录；本文件只保留公开评测所需摘要。
