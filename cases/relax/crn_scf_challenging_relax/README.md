# crn_scf_challenging_relax

CrN SCF-challenging relaxation 计算，用于记录一个最后电子步未达到常规 SCF 完整收敛 标记的输入。

## 输入

- workflow：relaxation
- 元素：Cr、N
- KPOINTS：Monkhorst-Pack `3 3 3`
- POTCAR：请提供符合 VASP 格式的 Cr/N `POTCAR`

## 运行方式

默认使用 `NP=32`：

```bash
cd cases/relax/crn_scf_challenging_relax
POTCAR=/path/to/crn_scf_challenging_relax/POTCAR ./run.sh
```

如需使用较少 MPI ranks：

```bash
NP=4 POTCAR=/path/to/crn_scf_challenging_relax/POTCAR ./run.sh
```

## 结果

- MaterialDFT 结果摘要：`result/output.md`
- 与 VASP 6.5.1 的对比：`result/comparison.md`
