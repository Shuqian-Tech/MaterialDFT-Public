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
step=5 scf_converged=true ionic_converged=false total_energy=-72.6145 free_energy=-72.6145 zero_temp_energy=-72.576 energy_change=-0.25997 max_force=0.624284 has_stress=true pressure=31.9859
```

## SCF 收敛判据

- EDIFF：`1e-06`
- 最后一个 `DAV/RMM` 的 `|d eps|`：`6.2686e-08`
- 判定：收敛

## 迭代步数

| 指标 | 数值 |
| --- | ---: |
| ionic steps | 5 |
| electronic iterations | 46 |
| electronic iterations by ionic step | `10, 7, 9, 10, 10` |

## 运行时间

- MaterialDFT wall/recorded time：`308 s`

## OSZICAR 末行

```text
   5 F= -.72614473E+02 E0= -.72575992E+02  d E =-.259970E+00
```

## 说明

该结果由本轮公开评测重新运行生成。完整运行输出未放入本目录；本文件只保留公开评测所需摘要。
