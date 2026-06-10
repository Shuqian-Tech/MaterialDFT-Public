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
ionic_steps=9
```

## 运行时间

- MPI ranks：32
- 本地单次实测 wall time：`286 s`

## OSZICAR 末行

```text
9 F= -.49101037E+02 E0= -.49095763E+02  d E =-.217020E+03
```

## 最终状态摘要

- ionic steps：`9`
- 最终 external pressure：`-3.43429 kB`

## 说明

该结果由 `MaterialDFT-Public/bin/materialdft` 重新运行生成。完整运行输出未放入本目录；本文件只保留公开评测所需摘要。
