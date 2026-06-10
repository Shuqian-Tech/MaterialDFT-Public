# MaterialDFT 参考摘要

来源：

- case：`G14_relax_late_transition_isif3_002`
- workflow：relaxation
- runner：MaterialDFT Linux x86_64 binary

MaterialDFT `relax_result.txt` 摘要：

```text
converged=true
stopped_by_nsw=false
scf_failed=false
termination=converged
ionic_steps=4
ionic_history_size=4
step=1 scf_converged=true ionic_converged=false total_energy=-28.6752 free_energy=-28.6752 zero_temp_energy=-28.6707 energy_change=-28.6752 max_force=3.35164e-30 has_stress=true pressure=155.924
step=2 scf_converged=true ionic_converged=false total_energy=-28.1602 free_energy=-28.1602 zero_temp_energy=-28.1498 energy_change=0.515026 max_force=2.99087e-30 has_stress=true pressure=-233.306
step=3 scf_converged=true ionic_converged=false total_energy=-28.8077 free_energy=-28.8077 zero_temp_energy=-28.8011 energy_change=-0.132489 max_force=2.67859e-30 has_stress=true pressure=-6.29518
step=4 scf_converged=true ionic_converged=true total_energy=-28.808 free_energy=-28.808 zero_temp_energy=-28.8015 energy_change=-0.132776 max_force=2.67904e-30 has_stress=true pressure=-0.476255
```

MaterialDFT `OSZICAR` 末行：

```text
4 F= -.28808018E+02 E0= -.28801471E+02  d E =-.132776E+00
```

VASP 6.5.1 `OSZICAR` 参考末行：

```text
4 F= -.28808022E+02 E0= -.28801486E+02  d E =-.132780E+00
```

说明：

- 该示例用于 basic relaxation smoke test。
- 不要求不同机器上的最后几位完全一致；应关注是否完成 ionic convergence，以及最终能量是否处在参考范围内。
