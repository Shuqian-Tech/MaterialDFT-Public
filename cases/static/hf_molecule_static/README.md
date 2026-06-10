# hf_molecule_static

HF molecule static 单点计算，用于展示 MaterialDFT 对小分子盒子输入的基本支持。

## 输入

- workflow：static
- 元素：H, F
- KPOINTS：Monkhorst-Pack `1 1 1`
- POTCAR：请按 POSCAR 元素顺序提供符合 VASP 格式的 H、F `POTCAR`

## 运行方式

默认使用 `NP=32`：

```bash
cd cases/static/hf_molecule_static
POTCAR=/path/to/HF/POTCAR ./run.sh
```

如需使用较少 MPI ranks：

```bash
NP=4 POTCAR=/path/to/HF/POTCAR ./run.sh
```

## 结果

- MaterialDFT 结果摘要：`result/output.md`
- 与 VASP 6.5.1 的对比：`result/comparison.md`
