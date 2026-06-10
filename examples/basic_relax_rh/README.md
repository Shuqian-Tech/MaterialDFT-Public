# Rh relaxation 示例

这个示例是一个 Rh 体相 relaxation 计算：

- 原始 case：`G14_relax_late_transition_isif3_002`
- 工作流：relaxation
- 元素：Rh
- KPOINTS：Monkhorst-Pack `3 3 3`
- 参考 MaterialDFT 运行：4 个 ionic steps 后收敛

## 运行方式

先提供符合 VASP 格式的 Rh `POTCAR`：

```bash
cp /path/to/your/PBE/Rh/POTCAR input/POTCAR
```

然后运行：

```bash
../../bin/materialdft input/POSCAR input/INCAR input/POTCAR input/KPOINTS OUT
```

MPI smoke run：

```bash
mpirun -np 4 ../../bin/materialdft input/POSCAR input/INCAR input/POTCAR input/KPOINTS OUT
```

## 预期结果

参考摘要见：

- `expected/materialdft_summary.md`

本例主要用于确认 relaxation 路径、离子步循环、输出摘要和 VASP 风格输入处理可以正常工作。
