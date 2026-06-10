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
step=1 scf_converged=false ionic_converged=true total_energy=3.56613 free_energy=3.56613 zero_temp_energy=3.56323 energy_change=3.56613 max_force=1.61059e-31 has_stress=true pressure=6314.85
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
   1 F= 0.35661296E+01 E0= 0.35632307E+01  d E =0.356613E+01
```

## 说明

该结果由本轮公开评测重新运行生成。完整运行输出未放入本目录；本文件只保留公开评测所需摘要。
