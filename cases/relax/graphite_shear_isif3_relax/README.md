# graphite_shear_isif3_relax

Graphite shear-cell ISIF=3 relaxation calculation，使用当前公开 binary 以 `NP=32` 运行并记录结果。

## 输入

- workflow：relaxation
- 元素：C
- KPOINTS：Gamma `3 3 1`
- POTCAR：请提供与 `input/POTCAR.meta.json` 匹配、符合 VASP 格式的 `POTCAR`

## 运行方式

默认使用 `NP=32`，与本 case 的 `result/` 记录一致：

```bash
cd cases/relax/graphite_shear_isif3_relax
POTCAR=/path/to/POTCAR ./run.sh
```

如需调整 MPI ranks：

```bash
NP=4 POTCAR=/path/to/POTCAR ./run.sh
```

## 结果

- MaterialDFT 结果摘要：`result/output.md`
- 与 VASP 6.5.1 的对比：`result/comparison.md`
