#!/usr/bin/env bash
# Start the agency platform

set -e
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

echo ""
echo "→ Starting Microhard Agency platform..."
docker compose up -d

echo ""
echo "  Plane:          http://localhost:3000"
echo "  Invoice Ninja:  http://localhost:8080"
echo ""
docker compose ps
