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
step=2 scf_converged=true ionic_converged=false total_energy=-35.3219 free_energy=-35.3219 zero_temp_energy=-35.3219 energy_change=0.378587 max_force=6.7183 has_stress=true pressure=11.4805
```

## SCF 收敛判据

- EDIFF：`1e-05`
- 最后一个 `DAV/RMM` 的 `|d eps|`：`2.2286e-08`
- 判定：收敛

## 迭代步数

| 指标 | 数值 |
| --- | ---: |
| ionic steps | 2 |
| electronic iterations | 23 |
| electronic iterations by ionic step | `14, 9` |

## 运行时间

- MaterialDFT wall/recorded time：`7 s`

## OSZICAR 末行

```text
   2 F= -.35321880E+02 E0= -.35321880E+02  d E =0.378587E+00
```

## 说明

该结果由本轮公开评测重新运行生成。完整运行输出未放入本目录；本文件只保留公开评测所需摘要。
