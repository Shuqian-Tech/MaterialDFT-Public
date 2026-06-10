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
step=1 scf_converged=true ionic_converged=false total_energy=-28.6749 free_energy=-28.6749 zero_temp_energy=-28.67 energy_change=-28.6749 max_force=1.0643e-29 has_stress=true pressure=184.337
step=2 scf_converged=true ionic_converged=false total_energy=-27.8346 free_energy=-27.8346 zero_temp_energy=-27.8237 energy_change=0.840324 max_force=1.57728e-29 has_stress=true pressure=-267.745
step=3 scf_converged=true ionic_converged=false total_energy=-28.8067 free_energy=-28.8067 zero_temp_energy=-28.8 energy_change=-0.131793 max_force=1.8841e-29 has_stress=true pressure=-13.5429
step=4 scf_converged=true ionic_converged=true total_energy=-28.8079 free_energy=-28.8079 zero_temp_energy=-28.8014 energy_change=-0.133043 max_force=1.28739e-29 has_stress=true pressure=-3.10334
```

## 迭代步数

| 指标 | 数值 |
| --- | ---: |
| ionic steps | 4 |
| electronic iterations | 41 |
| electronic iterations by ionic step | `17, 9, 9, 6` |

## 运行时间

- MaterialDFT wall/recorded time：`13 s`

## OSZICAR 末行

```text
   4 F= -.28807949E+02 E0= -.28801366E+02  d E =-.133043E+00
```

## 说明

该结果由本轮公开评测重新运行生成。完整运行输出未放入本目录；本文件只保留公开评测所需摘要。
