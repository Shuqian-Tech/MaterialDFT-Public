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
ionic_steps=1
ionic_history_size=1
step=1 scf_converged=false ionic_converged=true total_energy=-17.8485 free_energy=-17.8485 zero_temp_energy=-17.8441 energy_change=-17.8485 max_force=2.34696e-30 has_stress=true pressure=4.43773
```

## 迭代步数

| 指标 | 数值 |
| --- | ---: |
| ionic steps | 1 |
| electronic iterations | 8 |
| electronic iterations by ionic step | `8` |

## 运行时间

- MaterialDFT wall/recorded time：`2 s`

## OSZICAR 末行

```text
   1 F= -.17848456E+02 E0= -.17844064E+02  d E =-.178485E+02
```

## 说明

该结果由本轮公开评测重新运行生成。完整运行输出未放入本目录；本文件只保留公开评测所需摘要。
