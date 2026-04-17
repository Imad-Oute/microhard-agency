#!/usr/bin/env bash
# Start the agency platform

set -e
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

echo ""
echo "→ Starting Microhard Agency platform..."
docker compose up -d

echo ""
echo "  Plane:          http://localhost:33000"
echo "  Invoice Ninja:  http://localhost:38080"
echo "  MinIO Console:  http://localhost:39090"
echo ""
docker compose ps
