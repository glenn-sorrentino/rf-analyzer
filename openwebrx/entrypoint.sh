#!/usr/bin/env bash
set -euo pipefail

CFG="${CFG:-/config/hackrf.json}"
PORT="${PORT:-8073}"
HOST="${HOST:-0.0.0.0}"

# Sanity: HackRF visible
hackrf_info >/dev/null 2>&1 || {
  echo "HackRF not detected. Ensure USB is passed through: devices: - /dev/bus/usb:/dev/bus/usb" >&2
}

# Run OpenWebRX
exec /app/.venv/bin/python /app/openwebrx.py \
  --receiver-config "${CFG}" \
  --host "${HOST}" \
  --port "${PORT}"
