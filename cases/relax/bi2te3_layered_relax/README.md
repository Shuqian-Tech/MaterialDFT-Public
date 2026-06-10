# bi2te3_layered_relax

层状材料 relaxation 计算，用于展示 MaterialDFT 对 VASP 风格 relaxation 输入的支持。

## 输入

- workflow：relaxation
- 元素：Bi、Te
- KPOINTS：Gamma `2 2 1`
- POTCAR：请提供符合 VASP 格式的 Bi/Te `POTCAR`

## 运行方式

默认使用 `NP=32`：

```bash
cd cases/relax/bi2te3_layered_relax
POTCAR=/path/to/bi2te3_layered_relax/POTCAR ./run.sh
```

如需使用较少 MPI ranks：

```bash
NP=4 POTCAR=/path/to/bi2te3_layered_relax/POTCAR ./run.sh
```

## 结果

- MaterialDFT 结果摘要：`result/output.md`
- 与 VASP 6.5.1 的对比：`result/comparison.md`

说明：该 case 的 VASP `MPI 32 ranks` 正常完成；MaterialDFT 默认 `MPI 32 ranks` 为非完整收敛，但 `np1` 复核可以正常完成并与 VASP 最终结果高度接近。因此它作为边界样例记录，不作为默认 `MPI 32 ranks` 正常收敛示例。
