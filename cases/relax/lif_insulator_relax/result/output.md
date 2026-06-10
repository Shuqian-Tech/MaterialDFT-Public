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
ionic_steps=1
ionic_history_size=1
step=1 scf_converged=true ionic_converged=true total_energy=-38.4393 free_energy=-38.4393 zero_temp_energy=-38.4393 energy_change=-38.4393 max_force=3.28219e-29 has_stress=true pressure=43.9956
```

## 迭代步数

| 指标 | 数值 |
| --- | ---: |
| ionic steps | 1 |
| electronic iterations | 11 |
| electronic iterations by ionic step | `11` |

## 运行时间

- MaterialDFT wall/recorded time：`3 s`

## OSZICAR 末行

```text
   1 F= -.38439279E+02 E0= -.38439279E+02  d E =-.384393E+02
```

## 说明

该结果由本轮公开评测重新运行生成。完整运行输出未放入本目录；本文件只保留公开评测所需摘要。
