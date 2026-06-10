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
scf_failed=false
termination=ionic_unconverged
ionic_steps=3
ionic_history_size=3
step=1 scf_converged=true ionic_converged=false total_energy=-16.0168 free_energy=-16.0168 zero_temp_energy=-16.0168 energy_change=-16.0168 max_force=1.09513 has_stress=true pressure=14.6625
step=2 scf_converged=true ionic_converged=false total_energy=-15.9188 free_energy=-15.9188 zero_temp_energy=-15.9188 energy_change=0.0980043 max_force=3.38939 has_stress=true pressure=17.9371
step=3 scf_converged=true ionic_converged=false total_energy=-16.0328 free_energy=-16.0328 zero_temp_energy=-16.0328 energy_change=-0.01599 max_force=0.408211 has_stress=true pressure=14.5071
```

## 迭代步数

| 指标 | 数值 |
| --- | ---: |
| ionic steps | 3 |
| electronic iterations | 39 |
| electronic iterations by ionic step | `19, 11, 9` |

## 运行时间

- MaterialDFT wall/recorded time：`3.310 s`

## OSZICAR 末行

```text
   3 F= -.16032795E+02 E0= -.16032795E+02  d E =-.159900E-01
```

## 说明

该结果由本轮公开评测重新运行生成。完整运行输出未放入本目录；本文件只保留公开评测所需摘要。
