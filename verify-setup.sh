#!/usr/bin/env bash
set -euo pipefail
echo "[check] act presence"; command -v act >/dev/null || { echo "act missing" >&2; exit 1; }
echo "[info] List workflows"; act -l || true
echo "[info] Dry run"; ./test-gerrit-local.sh --dry-run --verbose || true
echo "[ok] Done"
