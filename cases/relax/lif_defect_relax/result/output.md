# MaterialDFT 输出结果

## 运行设置

- binary：`bin/materialdft`
- 平台：Linux x86_64
- MPI ranks：32
- workflow：relaxation

## 收敛摘要

```text
converged=false
stopped_by_nsw=true
scf_failed=true
termination=ionic_unconverged
ionic_steps=5
ionic_history_size=5
step=5 scf_converged=false ionic_converged=false total_energy=-148.071 free_energy=-148.071 zero_temp_energy=-148.071 energy_change=-2.02864 max_force=1.65691 has_stress=true pressure=131.438
```

## SCF 收敛判据

- EDIFF：`1e-06`
- 最后一个 `DAV/RMM` 的 `|d eps|`：`6.3575e-07`
- 判定：收敛

## 迭代步数

| 指标 | 数值 |
| --- | ---: |
| ionic steps | 5 |
| electronic iterations | 50 |
| electronic iterations by ionic step | `10, 10, 10, 10, 10` |

## 运行时间

- MaterialDFT wall/recorded time：`95 s`

## OSZICAR 末行

```text
   5 F= -.14807138E+03 E0= -.14807138E+03  d E =-.202864E+01
```

## 说明

该结果由本轮公开评测重新运行生成。完整运行输出未放入本目录；本文件只保留公开评测所需摘要。
