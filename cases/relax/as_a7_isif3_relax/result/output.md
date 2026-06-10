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
ionic_steps=2
ionic_history_size=2
step=1 scf_converged=true ionic_converged=false total_energy=-7.67358 free_energy=-7.67358 zero_temp_energy=-7.66139 energy_change=-7.67358 max_force=2.4945 has_stress=true pressure=80.2742
step=2 scf_converged=true ionic_converged=false total_energy=-7.85197 free_energy=-7.85197 zero_temp_energy=-7.83891 energy_change=-0.178385 max_force=2.10131 has_stress=true pressure=58.4573
```

## 迭代步数

| 指标 | 数值 |
| --- | ---: |
| ionic steps | 2 |
| electronic iterations | 16 |
| electronic iterations by ionic step | `11, 5` |

## 运行时间

- MaterialDFT wall/recorded time：`0.880 s`

## OSZICAR 末行

```text
   2 F= -.78519655E+01 E0= -.78389131E+01  d E =-.178385E+00
```

## 说明

该结果由本轮公开评测重新运行生成。完整运行输出未放入本目录；本文件只保留公开评测所需摘要。
