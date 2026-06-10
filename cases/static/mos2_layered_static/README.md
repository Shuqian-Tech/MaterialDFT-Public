# mos2_layered_static

MoS2 layered bulk static 单点计算，用于展示 MaterialDFT 对层状硫族化物输入的支持。

## 输入

- workflow：static
- 元素：Mo、S
- KPOINTS：Monkhorst-Pack `3 3 1`
- POTCAR：请提供符合 VASP 格式的 Mo/S `POTCAR`

## 运行方式

默认使用 `NP=32`：

```bash
cd cases/static/mos2_layered_static
POTCAR=/path/to/MoS2/POTCAR ./run.sh
```

如需使用较少 MPI ranks：

```bash
NP=4 POTCAR=/path/to/MoS2/POTCAR ./run.sh
```

## 结果

- MaterialDFT 结果摘要：`result/output.md`
- 与 VASP 6.5.1 的对比：`result/comparison.md`
