#!/usr/bin/env bash
set -euo pipefail

PORT="${PORT:-8080}"
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

exec python3 -m http.server "$PORT" --bind 0.0.0.0