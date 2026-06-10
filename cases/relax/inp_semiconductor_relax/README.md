# inp_semiconductor_relax

InP semiconductor bulk relaxation 计算，用于展示 MaterialDFT 对半导体 bulk relax 输入的支持。

## 输入

- workflow：relaxation
- 元素：In、P
- KPOINTS：Monkhorst-Pack `2 2 2`
- POTCAR：请提供符合 VASP 格式的 In/P `POTCAR`

## 运行方式

默认使用 `NP=32`：

```bash
cd cases/relax/inp_semiconductor_relax
POTCAR=/path/to/inp_semiconductor_relax/POTCAR ./run.sh
```

如需使用较少 MPI ranks：

```bash
NP=4 POTCAR=/path/to/inp_semiconductor_relax/POTCAR ./run.sh
```

## 结果

- MaterialDFT 结果摘要：`result/output.md`
- 与 VASP 6.5.1 的对比：`result/comparison.md`
