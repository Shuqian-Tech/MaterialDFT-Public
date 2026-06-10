# sb2te3_layered_relax

层状材料 relaxation 计算，用于展示 MaterialDFT 对 VASP 风格 relaxation 输入的支持。

## 输入

- workflow：relaxation
- 元素：Sb、Te
- KPOINTS：Gamma `2 2 1`
- POTCAR：请提供符合 VASP 格式的 Sb/Te `POTCAR`

## 运行方式

默认使用 `NP=32`：

```bash
cd cases/relax/sb2te3_layered_relax
POTCAR=/path/to/sb2te3_layered_relax/POTCAR ./run.sh
```

如需使用较少 MPI ranks：

```bash
NP=4 POTCAR=/path/to/sb2te3_layered_relax/POTCAR ./run.sh
```

## 结果

- MaterialDFT 结果摘要：`result/output.md`
- 与 VASP 6.5.1 的对比：`result/comparison.md`
