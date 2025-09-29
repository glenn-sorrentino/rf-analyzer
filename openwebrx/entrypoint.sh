#!/usr/bin/env bash
set -euo pipefail
CFG="${CFG:-/config/hackrf.json}"
HOST="${HOST:-0.0.0.0}"
PORT="${PORT:-8073}"

# Sanity checks (non-fatal)
hackrf_info || true
soapy_sdr_util --find || true

exec /app/.venv/bin/python /app/openwebrx.py \
  --receiver-config "${CFG}" \
  --host "${HOST}" --port "${PORT}"
