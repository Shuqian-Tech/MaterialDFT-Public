# MaterialDFT 输出结果

## 运行设置

- binary：`bin/materialdft`
- 平台：Linux x86_64
- MPI ranks：32
- workflow：relax

## 收敛摘要

```text
converged=false
stopped_by_nsw=true
scf_failed=false
termination=ionic_unconverged
ionic_steps=3
ionic_history_size=3
step=1 scf_converged=true ionic_converged=false total_energy=-17.938 free_energy=-17.938 zero_temp_energy=-17.9389 energy_change=-17.938 max_force=0.823013 has_stress=true pressure=6.55488
step=2 scf_converged=true ionic_converged=false total_energy=-17.869 free_energy=-17.869 zero_temp_energy=-17.8696 energy_change=0.0690515 max_force=3.43474 has_stress=true pressure=11.9776
step=3 scf_converged=true ionic_converged=false total_energy=-17.9461 free_energy=-17.9461 zero_temp_energy=-17.9467 energy_change=-0.00805808 max_force=0.525252 has_stress=true pressure=7.41127
```

## 迭代步数

| 指标 | 数值 |
| --- | ---: |
| ionic steps | 3 |
| electronic iterations | 28 |
| electronic iterations by ionic step | `18, 5, 5` |

## 运行时间

- MaterialDFT wall/recorded time：`2.210 s`

## OSZICAR 末行

```text
   3 F= -.17946091E+02 E0= -.17946735E+02  d E =-.805808E-02
```

## 说明

该结果由本轮公开评测重新运行生成。完整运行输出未放入本目录；本文件只保留公开评测所需摘要。
