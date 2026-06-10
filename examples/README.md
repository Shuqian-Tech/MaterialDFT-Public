# 示例目录

本目录包含两个最小示例：

- `basic_static_rh`：Rh 体相 static 单点计算。
- `basic_relax_rh`：Rh 体相 relaxation 计算。

这些示例不包含真实 `POTCAR`。运行前请将你自己的、符合 VASP 格式的 Rh `POTCAR` 放到对应 `input/POTCAR` 路径。

示例运行方式：

```bash
cd MaterialDFT-Public
cp /path/to/your/Rh/POTCAR examples/basic_static_rh/input/POTCAR
mpirun -np 4 bin/materialdft \
  examples/basic_static_rh/input/POSCAR \
  examples/basic_static_rh/input/INCAR \
  examples/basic_static_rh/input/POTCAR \
  examples/basic_static_rh/input/KPOINTS \
  examples/basic_static_rh/OUT
```

`expected/` 目录给出我们在本地验证环境中的参考摘要，用于检查输出是否处在合理范围内。

说明：不同 MPI 进程数、BLAS/LAPACK 实现或机器环境可能导致最后几位数值和电子迭代数略有差异。示例的主要检查目标是：程序可以完成、输出文件生成、能量量级和收敛状态与参考摘要一致。
