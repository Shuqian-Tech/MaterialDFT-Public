# sns2_layered_static

SnS2 layered bulk static 单点计算，用于展示 MaterialDFT 对层状硫族化合物 static 输入的支持。

## 输入

- workflow：static
- 元素：Sn、S
- KPOINTS：Monkhorst-Pack `3 3 2`
- POTCAR：请提供符合 VASP 格式的 Sn/S `POTCAR`

## 运行方式

默认使用 `NP=32`：

```bash
cd cases/static/sns2_layered_static
POTCAR=/path/to/sns2_layered_static/POTCAR ./run.sh
```

如需使用较少 MPI ranks：

```bash
NP=4 POTCAR=/path/to/sns2_layered_static/POTCAR ./run.sh
```

## 结果

- MaterialDFT 结果摘要：`result/output.md`
- 与 VASP 6.5.1 的对比：`result/comparison.md`
