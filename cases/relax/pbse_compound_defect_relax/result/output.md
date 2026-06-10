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
step=5 scf_converged=true ionic_converged=false total_energy=-146.48 free_energy=-146.48 zero_temp_energy=-146.452 energy_change=-0.0325021 max_force=0.0968104 has_stress=true pressure=-4.22586
```

## SCF 收敛判据

- EDIFF：`1e-06`
- 最后一个 `DAV/RMM` 的 `|d eps|`：`6.9354e-07`
- 判定：收敛

## 迭代步数

| 指标 | 数值 |
| --- | ---: |
| ionic steps | 5 |
| electronic iterations | 36 |
| electronic iterations by ionic step | `10, 6, 6, 8, 6` |

## 运行时间

- MaterialDFT wall/recorded time：`209 s`

## OSZICAR 末行

```text
   5 F= -.14648015E+03 E0= -.14645194E+03  d E =-.325021E-01
```

## 说明

该结果由本轮公开评测重新运行生成。完整运行输出未放入本目录；本文件只保留公开评测所需摘要。
