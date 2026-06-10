# sb_post_transition_static

后过渡金属/主族金属 static 计算，用于展示 MaterialDFT 对 VASP 风格 static 输入的支持。

## 输入

- workflow：static
- 元素：Sb
- KPOINTS：Monkhorst-Pack `3 3 3`
- POTCAR：请提供符合 VASP 格式的 Sb `POTCAR`

## 运行方式

默认使用 `NP=32`：

```bash
cd cases/static/sb_post_transition_static
POTCAR=/path/to/sb_post_transition_static/POTCAR ./run.sh
```

如需使用较少 MPI ranks：

```bash
NP=4 POTCAR=/path/to/sb_post_transition_static/POTCAR ./run.sh
```

## 结果

- MaterialDFT 结果摘要：`result/output.md`
- 与 VASP 6.5.1 的对比：`result/comparison.md`
