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
ionic_steps=3
ionic_history_size=3
step=1 scf_converged=true ionic_converged=false total_energy=-29.3409 free_energy=-29.3409 zero_temp_energy=-29.3409 energy_change=-29.3409 max_force=1.20612 has_stress=true pressure=520.182
step=2 scf_converged=true ionic_converged=false total_energy=-29.4347 free_energy=-29.4347 zero_temp_energy=-29.4347 energy_change=-0.0938188 max_force=0.396796 has_stress=true pressure=500.243
step=3 scf_converged=true ionic_converged=true total_energy=-29.4462 free_energy=-29.4462 zero_temp_energy=-29.4462 energy_change=-0.105235 max_force=0.00028539 has_stress=true pressure=502.425
```

## 迭代步数

| 指标 | 数值 |
| --- | ---: |
| ionic steps | 3 |
| electronic iterations | 26 |
| electronic iterations by ionic step | `12, 8, 6` |

## 运行时间

- MaterialDFT wall/recorded time：`9 s`

## OSZICAR 末行

```text
   3 F= -.29446152E+02 E0= -.29446152E+02  d E =-.105235E+00
```

## 说明

该结果由本轮公开评测重新运行生成。完整运行输出未放入本目录；本文件只保留公开评测所需摘要。
