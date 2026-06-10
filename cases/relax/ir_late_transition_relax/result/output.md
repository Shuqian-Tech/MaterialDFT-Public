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
step=1 scf_converged=true ionic_converged=false total_energy=-34.9648 free_energy=-34.9648 zero_temp_energy=-34.971 energy_change=-34.9648 max_force=1.80362e-30 has_stress=true pressure=235.059
step=2 scf_converged=true ionic_converged=false total_energy=-32.7942 free_energy=-32.7942 zero_temp_energy=-32.792 energy_change=2.1706 max_force=5.0042e-30 has_stress=true pressure=-425.374
step=3 scf_converged=true ionic_converged=false total_energy=-35.1924 free_energy=-35.1924 zero_temp_energy=-35.1968 energy_change=-0.227641 max_force=2.60171e-30 has_stress=true pressure=-20.7695
step=4 scf_converged=true ionic_converged=true total_energy=-35.1947 free_energy=-35.1947 zero_temp_energy=-35.1994 energy_change=-0.229986 max_force=3.49405e-30 has_stress=true pressure=-1.90737
```

## 迭代步数

| 指标 | 数值 |
| --- | ---: |
| ionic steps | 4 |
| electronic iterations | 37 |
| electronic iterations by ionic step | `14, 9, 9, 5` |

## 运行时间

- MaterialDFT wall/recorded time：`11 s`

## OSZICAR 末行

```text
   4 F= -.35194737E+02 E0= -.35199363E+02  d E =-.229986E+00
```

## 说明

该结果由本轮公开评测重新运行生成。完整运行输出未放入本目录；本文件只保留公开评测所需摘要。
