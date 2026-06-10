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
step=1 scf_converged=true ionic_converged=false total_energy=-6.55322 free_energy=-6.55322 zero_temp_energy=-6.55322 energy_change=-6.55322 max_force=0.0694827 has_stress=true pressure=21.7688
step=2 scf_converged=true ionic_converged=false total_energy=-6.56293 free_energy=-6.56293 zero_temp_energy=-6.56293 energy_change=-0.00970932 max_force=0.0604916 has_stress=true pressure=16.577
step=3 scf_converged=true ionic_converged=false total_energy=-6.578 free_energy=-6.578 zero_temp_energy=-6.578 energy_change=-0.0247793 max_force=0.0377165 has_stress=true pressure=3.03961
```

## 迭代步数

| 指标 | 数值 |
| --- | ---: |
| ionic steps | 3 |
| electronic iterations | 22 |
| electronic iterations by ionic step | `11, 5, 6` |

## 运行时间

- MaterialDFT wall/recorded time：`0.970 s`

## OSZICAR 末行

```text
   3 F= -.65780040E+01 E0= -.65780040E+01  d E =-.247793E-01
```

## 说明

该结果由本轮公开评测重新运行生成。完整运行输出未放入本目录；本文件只保留公开评测所需摘要。
