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
step=1 scf_converged=true ionic_converged=false total_energy=-8.27264 free_energy=-8.27264 zero_temp_energy=-8.27264 energy_change=-8.27264 max_force=0.353877 has_stress=true pressure=105.209
step=2 scf_converged=true ionic_converged=false total_energy=-8.39738 free_energy=-8.39738 zero_temp_energy=-8.39738 energy_change=-0.124746 max_force=0.0684355 has_stress=true pressure=25.2641
step=3 scf_converged=true ionic_converged=false total_energy=-8.40699 free_energy=-8.40699 zero_temp_energy=-8.40699 energy_change=-0.134357 max_force=0.0754325 has_stress=true pressure=-1.76725
```

## 迭代步数

| 指标 | 数值 |
| --- | ---: |
| ionic steps | 3 |
| electronic iterations | 21 |
| electronic iterations by ionic step | `11, 6, 4` |

## 运行时间

- MaterialDFT wall/recorded time：`1.420 s`

## OSZICAR 末行

```text
   3 F= -.84069939E+01 E0= -.84069939E+01  d E =-.134357E+00
```

## 说明

该结果由本轮公开评测重新运行生成。完整运行输出未放入本目录；本文件只保留公开评测所需摘要。
