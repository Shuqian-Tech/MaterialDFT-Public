# ktao3_perovskite_relax

KTaO3 perovskite bulk relaxation 计算，用于展示 MaterialDFT 对钙钛矿氧化物 relax 输入的支持。

## 输入

- workflow：relaxation
- 元素：K、Ta、O
- KPOINTS：Monkhorst-Pack `3 3 3`
- POTCAR：请提供符合 VASP 格式的 K/Ta/O `POTCAR`

## 运行方式

默认使用 `NP=32`：

```bash
cd cases/relax/ktao3_perovskite_relax
POTCAR=/path/to/ktao3_perovskite_relax/POTCAR ./run.sh
```

如需使用较少 MPI ranks：

```bash
NP=4 POTCAR=/path/to/ktao3_perovskite_relax/POTCAR ./run.sh
```

## 结果

- MaterialDFT 结果摘要：`result/output.md`
- 与 VASP 6.5.1 的对比：`result/comparison.md`
