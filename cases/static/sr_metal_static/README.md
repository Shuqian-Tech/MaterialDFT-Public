# sr_metal_static

Sr metal static 单点计算，用于展示 MaterialDFT 对快速金属 bulk static 输入的支持。

## 输入

- workflow：static
- 元素：Sr
- KPOINTS：Monkhorst-Pack `1 1 1`
- POTCAR：请提供符合 VASP 格式的 Sr `POTCAR`

## 运行方式

默认使用 `NP=32`：

```bash
cd cases/static/sr_metal_static
POTCAR=/path/to/sr_metal_static/POTCAR ./run.sh
```

如需使用较少 MPI ranks：

```bash
NP=4 POTCAR=/path/to/sr_metal_static/POTCAR ./run.sh
```

## 结果

- MaterialDFT 结果摘要：`result/output.md`
- 与 VASP 6.5.1 的对比：`result/comparison.md`
