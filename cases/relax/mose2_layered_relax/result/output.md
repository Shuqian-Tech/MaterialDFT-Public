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
step=1 scf_converged=true ionic_converged=false total_energy=-9.59625 free_energy=-9.59625 zero_temp_energy=-9.59153 energy_change=-9.59625 max_force=17.5679 has_stress=true pressure=509.646
step=2 scf_converged=true ionic_converged=false total_energy=-18.9386 free_energy=-18.9386 zero_temp_energy=-18.9323 energy_change=-9.34231 max_force=1.84638 has_stress=true pressure=-49.9853
step=3 scf_converged=true ionic_converged=false total_energy=-19.2173 free_energy=-19.2173 zero_temp_energy=-19.2093 energy_change=-9.62104 max_force=0.446771 has_stress=true pressure=14.321
step=4 scf_converged=true ionic_converged=true total_energy=-19.2342 free_energy=-19.2342 zero_temp_energy=-19.2279 energy_change=-9.63798 max_force=0.00110735 has_stress=true pressure=-1.81622
```

## 迭代步数

| 指标 | 数值 |
| --- | ---: |
| ionic steps | 4 |
| electronic iterations | 52 |
| electronic iterations by ionic step | `18, 13, 14, 7` |

## 运行时间

- MaterialDFT wall/recorded time：`18 s`

## OSZICAR 末行

```text
   4 F= -.19234233E+02 E0= -.19227927E+02  d E =-.963798E+01
```

## 说明

该结果由本轮公开评测重新运行生成。完整运行输出未放入本目录；本文件只保留公开评测所需摘要。
