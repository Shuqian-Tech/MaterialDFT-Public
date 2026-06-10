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
step=5 scf_converged=false ionic_converged=false total_energy=-61.6686 free_energy=-61.6686 zero_temp_energy=-61.6461 energy_change=-116.456 max_force=53.239 has_stress=true pressure=203.768
```

## SCF 收敛判据

- EDIFF：`1e-06`
- 最后一个 `DAV/RMM` 的 `|d eps|`：`3.3801e-05`
- 判定：未完整收敛

## 迭代步数

| 指标 | 数值 |
| --- | ---: |
| ionic steps | 5 |
| electronic iterations | 50 |
| electronic iterations by ionic step | `10, 10, 10, 10, 10` |

## 运行时间

- MaterialDFT wall/recorded time：`274 s`

## OSZICAR 末行

```text
   5 F= -.61668583E+02 E0= -.61646113E+02  d E =-.116456E+03
```

## 说明

该结果由本轮公开评测重新运行生成。完整运行输出未放入本目录；本文件只保留公开评测所需摘要。
