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
step=3 scf_converged=true ionic_converged=false total_energy=-16.3865 free_energy=-16.3865 zero_temp_energy=-16.3823 energy_change=-1.71838 max_force=8.11904 has_stress=true pressure=-9.1527
```

## SCF 收敛判据

- EDIFF：`1e-05`
- 最后一个 `DAV/RMM` 的 `|d eps|`：`2.6587e-06`
- 判定：收敛

## 迭代步数

| 指标 | 数值 |
| --- | ---: |
| ionic steps | 3 |
| electronic iterations | 42 |
| electronic iterations by ionic step | `17, 12, 13` |

## 运行时间

- MaterialDFT wall/recorded time：`32 s`

## OSZICAR 末行

```text
   3 F= -.16386537E+02 E0= -.16382275E+02  d E =-.171838E+01
```

## 说明

该结果由本轮公开评测重新运行生成。完整运行输出未放入本目录；本文件只保留公开评测所需摘要。
