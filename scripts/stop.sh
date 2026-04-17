#!/usr/bin/env bash
# Stop the agency platform (data is preserved)

set -e
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

echo ""
echo "→ Stopping Microhard Agency platform..."
docker compose down
echo "  ✓ All services stopped. Data preserved in data/"
echo ""
