# Docker Setup Instructions for Track & Serve Application

This guide explains how to run the Track & Serve Flask application using Docker Compose with MySQL database.

## Prerequisites

- Docker Desktop (Windows/Mac) or Docker Engine + Docker Compose (Linux)
- Git (to clone the repository if needed)

## Quick Start

1. **Clone or navigate to the project directory:**
   ```bash
   cd C:\xampp\htdocs\HS-2
   ```

2. **Create environment file (optional):**
   ```bash
   # Copy the example file and customize if needed
   # For default settings, you can skip this step
   ```
   
   Create a `.env` file in the project root with:
   ```env
   DB_HOST=db
   DB_PORT=3306
   DB_USER=trackserve
   DB_PASSWORD=StrongPassword123
   DB_NAME=track_serve
   MYSQL_ROOT_PASSWORD=StrongPassword123
   FLASK_ENV=production
   ```

3. **Build and start containers:**
   ```bash
   docker-compose up --build
   ```

   This will:
   - Build the Flask backend container
   - Start MySQL container with auto-initialization
   - Automatically import `track_serve.sql` and `track_serve_Final.sql`
   - Wait for database to be ready before starting backend
   - Expose the application on `http://localhost:5000`

4. **Access the application:**
   - Open your browser and navigate to: `http://localhost:5000`

## Docker Architecture

### Services

1. **Backend (Flask + Gunicorn)**
   - Image: Built from `Dockerfile`
   - Port: 5000 (mapped to host)
   - Dependencies: Waits for MySQL to be healthy before starting
   - Environment: Uses environment variables from `.env` or docker-compose.yml

2. **Database (MySQL 8.0)**
   - Image: `mysql:8.0`
   - Port: 3306 (mapped to host)
   - Volumes: 
     - `db_data`: Persistent data storage
     - SQL files: Auto-imported on first run via `docker-entrypoint-initdb.d/`

### Network

- Both services run on a custom bridge network: `track_serve_network`
- Backend connects to database using hostname `db` (not localhost)

## File Structure

```
HS-2/
├── Dockerfile              # Backend container definition
├── docker-compose.yml      # Multi-container orchestration
├── .env                    # Environment variables (create this)
├── .dockerignore          # Files to exclude from build
├── wait-for-db.sh         # Database readiness script
├── config.py              # Updated to use env vars
├── main.py                # Flask application
├── requirements.txt       # Python dependencies (includes gunicorn)
├── track_serve.sql        # Initial database schema
├── track_serve_Final.sql  # Additional database data
└── ...
```

## Database Auto-Initialization

MySQL automatically imports SQL files on first container startup:
- `track_serve.sql` → imported first
- `track_serve_Final.sql` → imported second

This happens via MySQL's `docker-entrypoint-initdb.d/` mechanism. Files are only processed when the data directory is empty (first run).

## Environment Variables

| Variable | Default | Description |
|----------|---------|-------------|
| `DB_HOST` | `db` | MySQL hostname (use `db` in Docker, `localhost` for local) |
| `DB_PORT` | `3306` | MySQL port |
| `DB_USER` | `trackserve` | MySQL username |
| `DB_PASSWORD` | `StrongPassword123` | MySQL password |
| `DB_NAME` | `track_serve` | Database name |
| `MYSQL_ROOT_PASSWORD` | `StrongPassword123` | MySQL root password |

## Useful Commands

### Start containers in background:
```bash
docker-compose up -d
```

### View logs:
```bash
docker-compose logs -f
```

### View backend logs only:
```bash
docker-compose logs -f backend
```

### View database logs only:
```bash
docker-compose logs -f db
```

### Stop containers:
```bash
docker-compose down
```

### Stop and remove volumes (⚠️ deletes database):
```bash
docker-compose down -v
```

### Rebuild after code changes:
```bash
docker-compose up --build
```

### Access MySQL directly:
```bash
docker-compose exec db mysql -u trackserve -pStrongPassword123 track_serve
```

### Access backend container shell:
```bash
docker-compose exec backend /bin/bash
```

## Troubleshooting

### Database connection errors

**Problem:** Backend cannot connect to database.

**Solutions:**
1. Check if MySQL container is healthy: `docker-compose ps`
2. Verify environment variables match in `.env` and `docker-compose.yml`
3. Check database logs: `docker-compose logs db`
4. Ensure backend waits for database: Check `depends_on` in docker-compose.yml

### Port already in use

**Problem:** Port 5000 or 3306 already in use.

**Solutions:**
1. Change ports in `docker-compose.yml`:
   ```yaml
   ports:
     - "5001:5000"  # Backend
     - "3307:3306"  # Database
   ```
2. Stop conflicting services using those ports

### SQL files not imported

**Problem:** Database is empty after startup.

**Solutions:**
1. Ensure SQL files exist in project root
2. Remove database volume and restart:
   ```bash
   docker-compose down -v
   docker-compose up --build
   ```
3. Check MySQL logs for import errors: `docker-compose logs db`

### Backend won't start

**Problem:** Backend container exits immediately.

**Solutions:**
1. Check backend logs: `docker-compose logs backend`
2. Verify `main.py` exists and Flask app is named `app`
3. Check if all dependencies are in `requirements.txt`
4. Verify Gunicorn command in `Dockerfile` matches your app structure

## Production Considerations

1. **Security:**
   - Use strong passwords in `.env` file
   - Never commit `.env` to version control
   - Consider using Docker secrets for sensitive data
   - Remove volume mounts for `static` and `templates` in production

2. **Performance:**
   - Adjust Gunicorn workers: `-w 4` in `Dockerfile` (adjust based on CPU cores)
   - Configure MySQL `my.cnf` for production workloads
   - Use reverse proxy (nginx) in front of backend

3. **Backups:**
   - Regularly backup `db_data` volume
   - Export database: `docker-compose exec db mysqldump -u trackserve -p track_serve > backup.sql`

4. **Monitoring:**
   - Set up healthcheck endpoints
   - Monitor container logs
   - Use Docker stats: `docker stats`

## Local Development vs Docker

### Local Development (XAMPP)
- Uses `config.py` with `localhost` and `root` user
- Runs via `python main.py` directly
- No Docker required

### Docker Deployment
- Uses environment variables via `config.py`
- Host is `db` (Docker service name)
- Runs via Gunicorn in container
- Fully containerized environment

Both configurations work with the same codebase—`config.py` automatically detects environment variables.

## Support

For issues or questions:
1. Check logs: `docker-compose logs`
2. Verify all files are present (SQL files, requirements.txt, etc.)
3. Ensure Docker and Docker Compose are up to date
4. Review this documentation
