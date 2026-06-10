# MaterialDFT 参考摘要

来源：

- case：`G02_static_late_transition_bulk_mp_002`
- workflow：static
- runner：MaterialDFT Linux x86_64 binary

MaterialDFT 输出摘要：

```text
converged=true
iterations=12
total_energy=-28.6752
efermi=12.0178
```

MaterialDFT `OSZICAR` 末行：

```text
1 F= -.28675242E+02 E0= -.28670743E+02  d E =-.134943E-01
```

VASP 6.5.1 `OSZICAR` 参考末行：

```text
1 F= -.28675242E+02 E0= -.28670745E+02  d E =-.134913E-01
```

说明：

- 该示例用于 basic static smoke test。
- 不要求不同机器上的最后几位完全一致；应关注是否正常收敛以及能量量级是否一致。
