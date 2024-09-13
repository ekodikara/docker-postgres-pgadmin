### Postgres Service (postgres):
- The Postgres database is defined here with `POSTGRES_USER`, `POSTGRES_PASSWORD`, and `POSTGRES_DB`.
- A volume mounts the SQL script so that it is automatically executed when the container starts.
- Port `5432` is exposed for Postgres communication.

### pgAdmin Service (pgadmin):
- The `servers.json` file is mounted as a volume to `/pgadmin4/servers.json`, so pgAdmin can use it to pre-configure the connection to Postgres.
- The `depends_on` ensures pgAdmin starts only after the Postgres container is up.
- Port `5050` is mapped to `80` (the default pgAdmin port), so users can access pgAdmin at `localhost:5050`.

### How to Run:
1. Save the `docker-compose.yml` and `servers.json` files in the same directory.
2. Run the following command to build and start the containers:

```bash
docker-compose up