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
step=1 scf_converged=false ionic_converged=false total_energy=-23.9757 free_energy=-23.9757 zero_temp_energy=-23.9821 energy_change=-23.9757 max_force=6.63845 has_stress=true pressure=4996.45
step=2 scf_converged=false ionic_converged=false total_energy=-2.55299 free_energy=-2.55299 zero_temp_energy=-2.5506 energy_change=21.4227 max_force=49.8227 has_stress=true pressure=7056.65
step=3 scf_converged=false ionic_converged=false total_energy=-24.1833 free_energy=-24.1833 zero_temp_energy=-24.1749 energy_change=-0.207576 max_force=0.323329 has_stress=true pressure=5354.89
step=4 scf_converged=false ionic_converged=false total_energy=-24.1846 free_energy=-24.1846 zero_temp_energy=-24.1762 energy_change=-0.20884 max_force=0.0834284 has_stress=true pressure=5355.29
step=5 scf_converged=false ionic_converged=true total_energy=-24.1847 free_energy=-24.1847 zero_temp_energy=-24.1763 energy_change=-0.208941 max_force=0.00160289 has_stress=true pressure=5354.98
```

## 迭代步数

| 指标 | 数值 |
| --- | ---: |
| ionic steps | 5 |
| electronic iterations | 30 |
| electronic iterations by ionic step | `6, 6, 6, 6, 6` |

## 运行时间

- MaterialDFT wall/recorded time：`22 s`

## OSZICAR 末行

```text
   5 F= -.24184668E+02 E0= -.24176316E+02  d E =-.208941E+00  mag=    -0.0190
```

## 说明

该结果由本轮公开评测重新运行生成。完整运行输出未放入本目录；本文件只保留公开评测所需摘要。
