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
step=2 scf_converged=true ionic_converged=false total_energy=-7.7612 free_energy=-7.7612 zero_temp_energy=-7.7612 energy_change=-0.0498783 max_force=1.67011 has_stress=true pressure=40.7648
```

## SCF 收敛判据

- EDIFF：`1e-05`
- 最后一个 `DAV/RMM` 的 `|d eps|`：`1.8708e-06`
- 判定：收敛

## 迭代步数

| 指标 | 数值 |
| --- | ---: |
| ionic steps | 2 |
| electronic iterations | 21 |
| electronic iterations by ionic step | `17, 4` |

## 运行时间

- MaterialDFT wall/recorded time：`13 s`

## OSZICAR 末行

```text
   2 F= -.77611992E+01 E0= -.77611992E+01  d E =-.498783E-01
```

## 说明

该结果由本轮公开评测重新运行生成。完整运行输出未放入本目录；本文件只保留公开评测所需摘要。
