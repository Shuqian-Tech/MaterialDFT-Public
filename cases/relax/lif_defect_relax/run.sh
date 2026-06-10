#!/usr/bin/env bash
set -euo pipefail

CASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT="$(cd "${CASE_DIR}/../../.." && pwd)"
NP="${NP:-32}"
OUT="${OUT:-${CASE_DIR}/OUT}"
POTCAR="${POTCAR:-${CASE_DIR}/input/POTCAR}"

if [[ ! -f "${POTCAR}" ]]; then
  echo "缺少 POTCAR：${POTCAR}" >&2
  echo "请将符合 VASP 格式的 POTCAR 放到 input/POTCAR，或通过 POTCAR=/path/to/POTCAR 指定。" >&2
  exit 1
fi

mkdir -p "${OUT}"

mpirun -np "${NP}" "${ROOT}/bin/materialdft" \
  "${CASE_DIR}/input/POSCAR" \
  "${CASE_DIR}/input/INCAR" \
  "${POTCAR}" \
  "${CASE_DIR}/input/KPOINTS" \
  "${OUT}"
