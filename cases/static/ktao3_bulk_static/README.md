# ktao3_bulk_static

KTaO3 bulk static 单点计算，用于展示 MaterialDFT 对氧化物 bulk 输入的基本支持。

## 输入

- workflow：static
- 元素：K, Ta, O
- KPOINTS：Monkhorst-Pack 网格见 `input/KPOINTS`
- POTCAR：请按 POSCAR 元素顺序提供符合 VASP 格式的 K、Ta、O `POTCAR`

## 运行方式

默认使用 `NP=32`：

```bash
cd cases/static/ktao3_bulk_static
POTCAR=/path/to/KTaO3/POTCAR ./run.sh
```

如需使用较少 MPI ranks：

```bash
NP=4 POTCAR=/path/to/KTaO3/POTCAR ./run.sh
```

## 结果

- MaterialDFT 结果摘要：`result/output.md`
- 与 VASP 6.5.1 的对比：`result/comparison.md`
