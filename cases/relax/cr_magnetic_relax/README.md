# cr_magnetic_relax

Cr magnetic bulk relaxation 计算，用于展示 MaterialDFT 对自旋极化金属 relax 输入的支持。

## 输入

- workflow：relaxation
- 元素：Cr
- KPOINTS：Monkhorst-Pack `4 4 4`
- POTCAR：请提供符合 VASP 格式的 Cr `POTCAR`

## 运行方式

默认使用 `NP=32`：

```bash
cd cases/relax/cr_magnetic_relax
POTCAR=/path/to/Cr/POTCAR ./run.sh
```

如需使用较少 MPI ranks：

```bash
NP=4 POTCAR=/path/to/Cr/POTCAR ./run.sh
```

## 结果

- MaterialDFT 结果摘要：`result/output.md`
- 与 VASP 6.5.1 的对比：`result/comparison.md`
