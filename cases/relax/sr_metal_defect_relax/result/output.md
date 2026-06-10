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
scf_failed=true
termination=ionic_unconverged
ionic_steps=5
ionic_history_size=5
step=1 scf_converged=false ionic_converged=false total_energy=-24.7075 free_energy=-24.7075 zero_temp_energy=-24.7056 energy_change=-24.7075 max_force=3.61896 has_stress=true pressure=-11.5063
step=2 scf_converged=true ionic_converged=false total_energy=-25.614 free_energy=-25.614 zero_temp_energy=-25.6136 energy_change=-0.90645 max_force=1.87245 has_stress=true pressure=-12.5595
step=3 scf_converged=false ionic_converged=false total_energy=-25.9634 free_energy=-25.9634 zero_temp_energy=-25.9591 energy_change=-1.25588 max_force=0.338285 has_stress=true pressure=-13.3957
step=4 scf_converged=true ionic_converged=false total_energy=-25.9736 free_energy=-25.9736 zero_temp_energy=-25.9681 energy_change=-1.26604 max_force=0.362447 has_stress=true pressure=-13.3793
step=5 scf_converged=true ionic_converged=false total_energy=-25.9737 free_energy=-25.9737 zero_temp_energy=-25.9681 energy_change=-1.26621 max_force=0.370607 has_stress=true pressure=-13.3764
```

## 迭代步数

| 指标 | 数值 |
| --- | ---: |
| ionic steps | 5 |
| electronic iterations | 45 |
| electronic iterations by ionic step | `10, 10, 10, 8, 7` |

## 运行时间

- MaterialDFT wall/recorded time：`146 s`

## OSZICAR 末行

```text
   5 F= -.25973742E+02 E0= -.25968066E+02  d E =-.126621E+01
```

## 说明

该结果由本轮公开评测重新运行生成。完整运行输出未放入本目录；本文件只保留公开评测所需摘要。
