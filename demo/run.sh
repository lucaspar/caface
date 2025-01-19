#!/bin/bash
set -euo pipefail

if ! command -v uv &>/dev/null; then
    echo "uv could not be found; Install it or run the commands below manually."
    exit 1
fi

uv run main.py --fusion_method cluster_and_aggregate
uv run main.py --fusion_method average
