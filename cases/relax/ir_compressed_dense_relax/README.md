# ir_compressed_dense_relax

压缩 Ir bulk relaxation 计算，使用 dense Monkhorst-Pack `5 5 5` k-mesh。该 case 用于展示一个 VASP `MPI 32 ranks` 发生 `EDDDAV/ZHEGV` 报错、MaterialDFT `MPI 32 ranks` 能完成的高并行鲁棒性 case。

## 输入

- workflow：relaxation
- 元素：Ir
- KPOINTS：Monkhorst-Pack `5 5 5`
- POTCAR：请提供符合 VASP 格式的 Ir `POTCAR`

## 运行方式

默认使用 `NP=32`：

```bash
cd cases/relax/ir_compressed_dense_relax
POTCAR=/path/to/Ir/POTCAR ./run.sh
```

如需使用较少 MPI ranks：

```bash
NP=4 POTCAR=/path/to/Ir/POTCAR ./run.sh
```

## 结果

- MaterialDFT 结果摘要：`result/output.md`
- 与 VASP 6.5.1 的对比：`result/comparison.md`
