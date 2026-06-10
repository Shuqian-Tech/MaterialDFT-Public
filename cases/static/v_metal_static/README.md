# v_metal_static

V metal static 单点计算，用于展示 MaterialDFT 对早期过渡金属 bulk static 输入的支持。

## 输入

- workflow：static
- 元素：V
- KPOINTS：Monkhorst-Pack `4 4 4`
- POTCAR：请提供符合 VASP 格式的 V `POTCAR`

## 运行方式

默认使用 `NP=32`：

```bash
cd cases/static/v_metal_static
POTCAR=/path/to/v_metal_static/POTCAR ./run.sh
```

如需使用较少 MPI ranks：

```bash
NP=4 POTCAR=/path/to/v_metal_static/POTCAR ./run.sh
```

## 结果

- MaterialDFT 结果摘要：`result/output.md`
- 与 VASP 6.5.1 的对比：`result/comparison.md`
