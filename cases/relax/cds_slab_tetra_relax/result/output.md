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
ionic_steps=3
ionic_history_size=3
step=3 scf_converged=true ionic_converged=false total_energy=-7.34762 free_energy=-7.34762 zero_temp_energy=-7.34762 energy_change=-19.1205 max_force=1.02129 has_stress=true pressure=19.9864
```

## SCF 收敛判据

- EDIFF：`1e-05`
- 最后一个 `DAV/RMM` 的 `|d eps|`：`4.994e-07`
- 判定：收敛

## 迭代步数

| 指标 | 数值 |
| --- | ---: |
| ionic steps | 3 |
| electronic iterations | 90 |
| electronic iterations by ionic step | `60, 20, 10` |

## 运行时间

- MaterialDFT wall/recorded time：`56 s`

## OSZICAR 末行

```text
   3 F= -.73476197E+01 E0= -.73476197E+01  d E =-.191205E+02
```

## 说明

该结果由本轮公开评测重新运行生成。完整运行输出未放入本目录；本文件只保留公开评测所需摘要。
