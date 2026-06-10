# lif_defect_relax

LiF defect supercell relaxation 计算，用于记录一个程序完成但未达到完整收敛 的缺陷超胞输入。

## 输入

- workflow：relaxation
- 元素：Li、F
- KPOINTS：Monkhorst-Pack `1 1 2`
- POTCAR：请提供符合 VASP 格式的 Li/F `POTCAR`

## 运行方式

默认使用 `NP=32`：

```bash
cd cases/relax/lif_defect_relax
POTCAR=/path/to/lif_defect_relax/POTCAR ./run.sh
```

如需使用较少 MPI ranks：

```bash
NP=4 POTCAR=/path/to/lif_defect_relax/POTCAR ./run.sh
```

## 结果

- MaterialDFT 结果摘要：`result/output.md`
- 与 VASP 6.5.1 的对比：`result/comparison.md`
