# MaterialDFT 输出结果

## 运行设置

- binary：`bin/materialdft`
- 平台：Linux x86_64
- MPI ranks：32
- workflow：relax

## 收敛摘要

未生成 `static_result.txt`/`relax_result.txt` 摘要；以下以 `OSZICAR` 为准。

## 迭代步数

| 指标 | 数值 |
| --- | ---: |
| ionic steps | 23 |
| electronic iterations | 1010 |
| electronic iterations by ionic step | `26, 16, 16, 7, 6, 6, 10, 19, 16, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60` |

## 运行时间

- MaterialDFT wall/recorded time：`902 s`

## OSZICAR 末行

```text
  23 F= -.58323607E+03 E0= -.58322626E+03  d E =-.569527E+03
```

## 说明

该结果由本轮公开评测重新运行生成。完整运行输出未放入本目录；本文件只保留公开评测所需摘要。
