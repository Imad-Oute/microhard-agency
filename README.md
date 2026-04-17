# Microhard Agency — Local Platform

**v1 Stack:** Plane (project management) + Invoice Ninja (invoicing)

| Service | URL | Purpose |
|---|---|---|
| Plane | http://localhost:33000 | Projects, tasks, cycles |
| Invoice Ninja | http://localhost:38080 | Clients, invoices, finance |
| MinIO Console | http://localhost:39090 | File storage admin |

---

## First-Time Setup — run this once per machine

```bash
git clone https://github.com/Imad-Oute/microhard-agency.git
cd microhard-agency
cp .env.example .env       # then fill in your secrets (see .env.example)
bash scripts/setup.sh      # pulls images, starts services, runs migrations
```

After setup, create your admin account:
```bash
docker exec plane-api python manage.py createsuperuser --email your@email.com --noinput
docker exec plane-api python manage.py shell -c "
from django.contrib.auth import get_user_model
u = get_user_model().objects.get(email='your@email.com')
u.set_password('YourPassword'); u.is_active=True; u.save()
print('done')"
docker exec plane-api python manage.py create_instance_admin your@email.com
docker exec plane-api python manage.py shell -c "
from plane.license.models.instance import Instance
i = Instance.objects.first()
i.is_setup_done=True; i.is_signup_screen_visited=True; i.save()"
docker exec plane-redis redis-cli FLUSHALL
```

Then open http://localhost:33000 and sign in.

---

## Every day — start and stop

```bash
# Wake up the platform
bash scripts/start.sh

# Shut it down (all data preserved in data/)
bash scripts/stop.sh
```

That's it. Data lives in `data/` inside this folder — stopping containers never deletes anything.

**NEVER run `docker compose down -v`** — the `-v` flag deletes all your data.

---

## Moving to another machine

```bash
# On the current machine — back up your data first
bash scripts/backup.sh

# On the new machine
git clone https://github.com/Imad-Oute/microhard-agency.git
cd microhard-agency

# Copy your .env from the old machine (same secrets = same encryption keys)
# Copy your data/ folder from the old machine (or restore from a backup)

# Start
docker compose up -d
```

If you copy both `.env` and `data/` from the old machine, you get an exact clone —
same workspace, same projects, same history, same passwords. Nothing to reconfigure.

---

## Weekly backup

```bash
bash scripts/backup.sh
```

Creates `backups/YYYYMMDD-HHMMSS/` with compressed dumps of both databases
and Invoice Ninja files. Copy this folder to an external drive or cloud storage.

**Restore from backup:**
```bash
# Restore Plane DB
gunzip -c backups/TIMESTAMP/plane-db.sql.gz | \
  docker compose exec -T plane-db psql -U plane plane

# Restore Invoice Ninja DB
gunzip -c backups/TIMESTAMP/invoice-ninja-db.sql.gz | \
  docker compose exec -T invoice-ninja-db mysql -u ninja -p$IN_DB_PASSWORD ninja
```

---

## Useful commands

```bash
# Check what's running
docker compose ps

# Watch live logs (all services)
docker compose logs -f

# Watch one service
docker compose logs -f plane-api
docker compose logs -f invoice-ninja

# Restart one service
docker compose restart plane-api

# Full restart
bash scripts/stop.sh && bash scripts/start.sh
```

---

## Upgrading Plane or Invoice Ninja

```bash
docker compose pull          # pull latest images
bash scripts/stop.sh
docker compose up -d         # restart with new images
docker compose run --rm plane-migrator   # run DB migrations
```

---

## Project structure

```
microhard-agency/
├── docker-compose.yml          ← all 11 services defined here
├── .env.example                ← variable template (committed)
├── .env                        ← your actual secrets (gitignored — never commit)
├── .gitignore
├── configs/
│   ├── plane/
│   │   └── nginx.conf          ← Plane reverse proxy config
│   └── invoice-ninja/
│       └── nginx.conf          ← Invoice Ninja FastCGI config
├── scripts/
│   ├── setup.sh                ← run once on first install
│   ├── start.sh                ← daily start
│   ├── stop.sh                 ← daily stop
│   └── backup.sh               ← weekly backup
├── docs/
│   └── plane-guide.md          ← full Plane usage guide
├── data/                       ← all database & file data (gitignored)
│   ├── plane-db/
│   ├── plane-redis/
│   ├── plane-minio/
│   ├── invoice-ninja-db/
│   └── invoice-ninja/
└── backups/                    ← backup archives (gitignored)
```
