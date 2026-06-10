# MaterialDFT 输出结果

## 运行设置

- binary：`bin/materialdft`
- 平台：Linux x86_64
- MPI ranks：32
- workflow：relaxation

## 收敛摘要

```text
converged=true
stopped_by_nsw=false
scf_failed=false
termination=converged
ionic_steps=30
```

## 运行时间

- MPI ranks：32
- 本地单次实测 wall time：`655 s`

## OSZICAR 末行

```text
30 F= -.35294617E+02 E0= -.35292122E+02  d E =-.868057E-03
```

## 最终状态摘要

- ionic steps：`30`
- 最终 max force：`0.0134856 eV/A`
- 最终 external pressure：`0.375771 kB`

## 说明

该结果由 `MaterialDFT-Public/bin/materialdft` 重新运行生成。完整运行输出未放入本目录；本文件只保留公开评测所需摘要。
