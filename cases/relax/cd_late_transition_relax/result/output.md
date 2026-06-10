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
step=1 scf_converged=true ionic_converged=false total_energy=101.541 free_energy=101.541 zero_temp_energy=101.539 energy_change=101.541 max_force=2.99505e-30 has_stress=true pressure=18842.5
step=2 scf_converged=true ionic_converged=false total_energy=2006.12 free_energy=2006.12 zero_temp_energy=2006.14 energy_change=1904.57 max_force=1.25322e-30 has_stress=true pressure=-355.087
step=3 scf_converged=true ionic_converged=false total_energy=223.097 free_energy=223.097 zero_temp_energy=223.091 energy_change=121.555 max_force=4.57264e-30 has_stress=true pressure=-4778.47
step=4 scf_converged=true ionic_converged=false total_energy=0.979595 free_energy=0.979595 zero_temp_energy=0.976693 energy_change=-100.562 max_force=2.0844e-29 has_stress=true pressure=570.255
step=5 scf_converged=true ionic_converged=false total_energy=-0.053257 free_energy=-0.053257 zero_temp_energy=-0.0563014 energy_change=-101.595 max_force=5.07681e-30 has_stress=true pressure=411.341
step=6 scf_converged=true ionic_converged=false total_energy=-1.54787 free_energy=-1.54787 zero_temp_energy=-1.55265 energy_change=-103.089 max_force=2.01914e-29 has_stress=true pressure=35.2607
step=7 scf_converged=true ionic_converged=true total_energy=-1.56187 free_energy=-1.56187 zero_temp_energy=-1.56485 energy_change=-103.103 max_force=1.00545e-29 has_stress=true pressure=-1.28043
```

## 迭代步数

| 指标 | 数值 |
| --- | ---: |
| ionic steps | 7 |
| electronic iterations | 72 |
| electronic iterations by ionic step | `12, 16, 11, 10, 8, 8, 7` |

## 运行时间

- MaterialDFT wall/recorded time：`11 s`

## OSZICAR 末行

```text
   7 F= -.15618708E+01 E0= -.15648494E+01  d E =-.103103E+03
```

## 说明

该结果由本轮公开评测重新运行生成。完整运行输出未放入本目录；本文件只保留公开评测所需摘要。
