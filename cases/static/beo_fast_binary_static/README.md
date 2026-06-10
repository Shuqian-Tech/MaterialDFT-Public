# beo_fast_binary_static

快速二元化合物 static 计算，用于展示 MaterialDFT 对 VASP 风格 static 输入的支持。

## 输入

- workflow：static
- 元素：Be、O
- KPOINTS：Gamma `2 2 1`
- POTCAR：请提供符合 VASP 格式的 Be/O `POTCAR`

## 运行方式

默认使用 `NP=32`：

```bash
cd cases/static/beo_fast_binary_static
POTCAR=/path/to/beo_fast_binary_static/POTCAR ./run.sh
```

如需使用较少 MPI ranks：

```bash
NP=4 POTCAR=/path/to/beo_fast_binary_static/POTCAR ./run.sh
```

## 结果

- MaterialDFT 结果摘要：`result/output.md`
- 与 VASP 6.5.1 的对比：`result/comparison.md`
