# sige_zincblende_like_static

sige zincblende like static calculation，使用当前公开 binary 以 `NP=32` 运行并记录结果。

## 输入

- workflow：static
- 元素：Si, Ge
- KPOINTS：Gamma-centered / Gamma style `2 2 2`
- POTCAR：请提供与 `input/POTCAR.meta.json` 匹配、符合 VASP 格式的 `POTCAR`

## 运行方式

默认使用 `NP=32`，与本 case 的 `result/` 记录一致：

```bash
cd cases/static/sige_zincblende_like_static
POTCAR=/path/to/POTCAR ./run.sh
```

如需调整 MPI ranks：

```bash
NP=4 POTCAR=/path/to/POTCAR ./run.sh
```

## 结果

- MaterialDFT 结果摘要：`result/output.md`
- 与 VASP 6.5.1 的对比：`result/comparison.md`
