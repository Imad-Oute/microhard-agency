#!/usr/bin/env bash
# ═══════════════════════════════════════════════════════════════════
# MICROHARD AGENCY — Backup
# Exports all database volumes to compressed archives.
# Run weekly: bash scripts/backup.sh
# ═══════════════════════════════════════════════════════════════════

set -e
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

TIMESTAMP=$(date +%Y%m%d-%H%M%S)
BACKUP_DIR="$ROOT/backups/$TIMESTAMP"

mkdir -p "$BACKUP_DIR"

source .env

echo ""
echo "→ Backing up to backups/$TIMESTAMP/"

# ── Plane DB (PostgreSQL) ──────────────────────────────────────────
echo "  → Dumping Plane database..."
docker compose exec -T plane-db pg_dump -U "$PLANE_DB_USER" "$PLANE_DB_NAME" \
  | gzip > "$BACKUP_DIR/plane-db.sql.gz"
echo "    ✓ plane-db.sql.gz"

# ── Invoice Ninja DB (MySQL) ───────────────────────────────────────
echo "  → Dumping Invoice Ninja database..."
docker compose exec -T invoice-ninja-db mysqldump \
  -u "$IN_DB_USER" -p"$IN_DB_PASSWORD" "$IN_DB_NAME" \
  | gzip > "$BACKUP_DIR/invoice-ninja-db.sql.gz"
echo "    ✓ invoice-ninja-db.sql.gz"

# ── Invoice Ninja files (storage) ─────────────────────────────────
echo "  → Backing up Invoice Ninja storage..."
docker run --rm \
  --volumes-from invoice-ninja \
  -v "$BACKUP_DIR":/backup \
  alpine tar czf /backup/invoice-ninja-storage.tar.gz /var/www/app/storage
echo "    ✓ invoice-ninja-storage.tar.gz"

echo ""
echo "  ✓ Backup complete → backups/$TIMESTAMP/"
echo "  Files: $(ls "$BACKUP_DIR" | tr '\n' ' ')"
echo ""
echo "  Reminder: Copy this folder to an external drive."
echo ""
