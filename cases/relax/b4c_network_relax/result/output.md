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
scf_failed=false
termination=ionic_unconverged
ionic_steps=3
ionic_history_size=3
step=3 scf_converged=true ionic_converged=false total_energy=-36.2502 free_energy=-36.2502 zero_temp_energy=-36.2455 energy_change=-0.827141 max_force=3.9985 has_stress=true pressure=-301.694
```

## SCF 收敛判据

- EDIFF：`1e-05`
- 最后一个 `DAV/RMM` 的 `|d eps|`：`7.2927e-06`
- 判定：收敛

## 迭代步数

| 指标 | 数值 |
| --- | ---: |
| ionic steps | 3 |
| electronic iterations | 29 |
| electronic iterations by ionic step | `15, 7, 7` |

## 运行时间

- MaterialDFT wall/recorded time：`19 s`

## OSZICAR 末行

```text
   3 F= -.36250168E+02 E0= -.36245510E+02  d E =-.827141E+00
```

## 说明

该结果由本轮公开评测重新运行生成。完整运行输出未放入本目录；本文件只保留公开评测所需摘要。
