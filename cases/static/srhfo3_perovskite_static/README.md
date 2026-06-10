# srhfo3_perovskite_static

SrHfO3 perovskite bulk static 单点计算，用于展示 MaterialDFT 对钙钛矿氧化物 static 输入的支持。

## 输入

- workflow：static
- 元素：Sr、Hf、O
- KPOINTS：Monkhorst-Pack `3 3 3`
- POTCAR：请提供符合 VASP 格式的 Sr/Hf/O `POTCAR`

## 运行方式

默认使用 `NP=32`：

```bash
cd cases/static/srhfo3_perovskite_static
POTCAR=/path/to/srhfo3_perovskite_static/POTCAR ./run.sh
```

如需使用较少 MPI ranks：

```bash
NP=4 POTCAR=/path/to/srhfo3_perovskite_static/POTCAR ./run.sh
```

## 结果

- MaterialDFT 结果摘要：`result/output.md`
- 与 VASP 6.5.1 的对比：`result/comparison.md`
