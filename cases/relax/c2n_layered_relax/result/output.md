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
ionic_steps=2
ionic_history_size=2
step=2 scf_converged=true ionic_converged=false total_energy=-37.8302 free_energy=-37.8302 zero_temp_energy=-37.8177 energy_change=0.039333 max_force=1.28205 has_stress=true pressure=-49.2625
```

## SCF 收敛判据

- EDIFF：`1e-05`
- 最后一个 `DAV/RMM` 的 `|d eps|`：`9.6631e-06`
- 判定：收敛

## 迭代步数

| 指标 | 数值 |
| --- | ---: |
| ionic steps | 2 |
| electronic iterations | 30 |
| electronic iterations by ionic step | `23, 7` |

## 运行时间

- MaterialDFT wall/recorded time：`20 s`

## OSZICAR 末行

```text
   2 F= -.37830234E+02 E0= -.37817679E+02  d E =0.393330E-01
```

## 说明

该结果由本轮公开评测重新运行生成。完整运行输出未放入本目录；本文件只保留公开评测所需摘要。
