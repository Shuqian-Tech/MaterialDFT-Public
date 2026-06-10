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
ionic_steps=4
ionic_history_size=4
step=4 scf_converged=false ionic_converged=false total_energy=-20.0864 free_energy=-20.0864 zero_temp_energy=-20.0854 energy_change=-0.0433821 max_force=0.225826 has_stress=true pressure=-13.3549
```

## SCF 收敛判据

- EDIFF：`1e-05`
- 最后一个 `DAV/RMM` 的 `|d eps|`：`6.9609e-06`
- 判定：收敛

## 迭代步数

| 指标 | 数值 |
| --- | ---: |
| ionic steps | 4 |
| electronic iterations | 208 |
| electronic iterations by ionic step | `60, 60, 28, 60` |

## 运行时间

- MaterialDFT wall/recorded time：`167 s`

## OSZICAR 末行

```text
   4 F= -.20086447E+02 E0= -.20085433E+02  d E =-.433821E-01
```

## 说明

该结果由本轮公开评测重新运行生成。完整运行输出未放入本目录；本文件只保留公开评测所需摘要。
