# Rh static 示例

这个示例是一个 Rh 体相 static 单点计算：

- 原始 case：`G02_static_late_transition_bulk_mp_002`
- 工作流：static
- 元素：Rh
- KPOINTS：Monkhorst-Pack `3 3 3`

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

本例主要用于确认二进制程序、依赖库、输入解析和 static 输出路径可以正常工作。
