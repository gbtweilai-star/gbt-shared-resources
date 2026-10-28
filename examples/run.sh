#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
PYTHONPATH=src python -m gbt_shared_resources info
PYTHONPATH=src python -m gbt_shared_resources check --payload '{}'
PYTHONPATH=src python -m gbt_shared_resources run   --payload '{}'
