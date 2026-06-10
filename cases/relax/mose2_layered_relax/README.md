# mose2_layered_relax

MoSe2 layered bulk relaxation 计算，用于展示 MaterialDFT 对层状硫族化物 relax 输入的支持。

## 输入

- workflow：relaxation
- 元素：Mo、Se
- KPOINTS：Monkhorst-Pack `3 3 1`
- POTCAR：请提供符合 VASP 格式的 Mo/Se `POTCAR`

## 运行方式

默认使用 `NP=32`：

```bash
cd cases/relax/mose2_layered_relax
POTCAR=/path/to/mose2_layered_relax/POTCAR ./run.sh
```

如需使用较少 MPI ranks：

```bash
NP=4 POTCAR=/path/to/mose2_layered_relax/POTCAR ./run.sh
```

## 结果

- MaterialDFT 结果摘要：`result/output.md`
- 与 VASP 6.5.1 的对比：`result/comparison.md`
