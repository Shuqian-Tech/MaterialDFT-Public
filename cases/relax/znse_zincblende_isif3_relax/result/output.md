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
step=3 scf_converged=true ionic_converged=false total_energy=-23.9457 free_energy=-23.9457 zero_temp_energy=-23.9457 energy_change=-0.0396002 max_force=0.0973301 has_stress=true pressure=-1.18077
```

## SCF 收敛判据

- EDIFF：`1e-05`
- 最后一个 `DAV/RMM` 的 `|d eps|`：`2.6419e-07`
- 判定：收敛

## 迭代步数

| 指标 | 数值 |
| --- | ---: |
| ionic steps | 3 |
| electronic iterations | 39 |
| electronic iterations by ionic step | `18, 10, 11` |

## 运行时间

- MaterialDFT wall/recorded time：`67 s`

## OSZICAR 末行

```text
   3 F= -.23945708E+02 E0= -.23945708E+02  d E =-.396002E-01
```

## 说明

该结果由本轮公开评测重新运行生成。完整运行输出未放入本目录；本文件只保留公开评测所需摘要。
