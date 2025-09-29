#!/usr/bin/env bash
set -euo pipefail
CFG="${CFG:-/config/hackrf.json}"
HOST="${HOST:-0.0.0.0}"
PORT="${PORT:-8073}"
exec /venv/bin/python /app/openwebrx.py \
  --receiver-config "$CFG" \
  --host "$HOST" --port "$PORT"
