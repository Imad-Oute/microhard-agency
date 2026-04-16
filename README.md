# Microhard Agency — Local Platform

**v1 Stack:** Plane (project management) + Invoice Ninja (invoicing)

| Service | URL | Purpose |
|---|---|---|
| Plane | http://localhost:33000 | All projects, tasks, cycles |
| Invoice Ninja | http://localhost:38080 | Clients, invoices, finance |
| MinIO Console | http://localhost:39090 | File storage admin (optional) |

---

## First-Time Setup (run once)

```bash
bash scripts/setup.sh
```

This will: generate `.env` with secure secrets → pull images → start services → run migrations → create MinIO bucket.

---

## Daily Commands

```bash
# Start the platform
bash scripts/start.sh

# Stop the platform (data preserved)
bash scripts/stop.sh

# View status
docker compose ps

# View logs (all services)
docker compose logs -f

# View logs (specific service)
docker compose logs -f plane-api
docker compose logs -f invoice-ninja
```

---

## Backup (run weekly)

```bash
bash scripts/backup.sh
```

Exports Plane DB, Invoice Ninja DB, and Invoice Ninja files to `backups/TIMESTAMP/`. Copy this folder to an external drive.

---

## Upgrading

```bash
# Pull latest images
docker compose pull

# Restart with new images
docker compose up -d

# Run migrations after upgrade
docker compose run --rm plane-migrator
```

---

## v1 → v2 Tool Additions

When ready to expand (after first client delivery):

1. **n8n** — add to docker-compose.yml when automating proven manual processes
2. **Penpot** — add when doing regular UI/UX design work
3. **Supabase CLI** — install per-project when building the Construction SaaS

---

## Structure

```
microhard-agency/
├── docker-compose.yml      ← All services
├── .env.example            ← Template (committed)
├── .env                    ← Actual secrets (gitignored — never commit)
├── .gitignore
├── configs/
│   └── plane/
│       └── nginx.conf      ← Plane proxy config
├── scripts/
│   ├── setup.sh            ← Run once: first-time setup
│   ├── start.sh            ← Daily: start platform
│   ├── stop.sh             ← Daily: stop platform
│   └── backup.sh           ← Weekly: backup all data
├── data/                   ← Docker volume data (gitignored)
└── backups/                ← Backup archives (gitignored)
```
