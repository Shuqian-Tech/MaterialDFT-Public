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
step=1 scf_converged=true ionic_converged=true total_energy=-32.9863 free_energy=-32.9863 zero_temp_energy=-32.9863 energy_change=-32.9863 max_force=2.14034e-29 has_stress=true pressure=55.4743
```

## 迭代步数

| 指标 | 数值 |
| --- | ---: |
| ionic steps | 1 |
| electronic iterations | 14 |
| electronic iterations by ionic step | `14` |

## 运行时间

- MaterialDFT wall/recorded time：`6 s`

## OSZICAR 末行

```text
   1 F= -.32986327E+02 E0= -.32986327E+02  d E =-.329863E+02
```

## 说明

该结果由本轮公开评测重新运行生成。完整运行输出未放入本目录；本文件只保留公开评测所需摘要。
