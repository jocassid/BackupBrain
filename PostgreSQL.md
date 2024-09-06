[README.md](README.md)

# PostgreSQL

## \ Shorthands

| Shortcut   | Description              |
|------------|--------------------------|
| `\d TABLE` | Describe TABLE           |
| `\dt`      | List tables in database  |
| `\du`      | List users on server     |
| `\l`       | List databases in server |

## Determining version of PostgreSQL

From shell:

`psql --version`

From within psql:

`SELECT version();`

## See what queries are running

```SELECT pid AS process_id,
query AS active_query
FROM pg_stat_activity
WHERE state = 'active';
```

## Running Multiple Versions of PostgresSQL

[A handy article on this topic](https://medium.com/keeping-code/running-multiple-postgresql-versions-simultaneously-on-macos-linux-90b3d7e08ffd)

**Note:** In PostgreSQL parlance, a cluster is an instance of Postgres if you 
have PostgreSQL 9.3 and 9.6 installed you have at least 2 clusters.

### Determine what clusters are running

`pg_lsclusters`

Output looks like this
```
> Ver Cluster Port Status Owner    Data directory            Log file
> 9.3 main    5432 online jocassid /data/postgresql/9.3/main /var/log/postgresql/postgresql-9.3-main.log
> 9.6 main    5433 down   jocassid /data/postgresql/9.6/main /var/log/postgresql/postgresql-9.6-main.log
```

The port, data directory, and log file are controlled by config files under 
`/etc/postgres`, so you can do something like change the port in the config 
file and the result will be reflected in `pg_lscluster` output. 

### Start, Stop, Restart, or Reload Cluster

`pg_ctlcluster VERSION NAME ACTION` where `ACTION` is one of `start`, `stop`, 
`restart`, or `reload`.

for example

`pg_ctlcluster 9.6 main start`

## Backup and Restore Database

### Dump the database to a file

`sudo -u postgres pg_dump -Fc -f /db_backups/my_db.dump my_db`

### Restore the database

Restore the database

`sudo -u postgres pg_restore -d my_db --jobs=4 --verbose /db_backups/my_db.dump`

Change database owner

`sudo -u postgres psql -c "ALTER DATABASE my_db OWNER TO my_user"`

Change ownership of everything in the database

`sudo -u postgres psql -d my_db -c "REASSIGN OWNED BY django TO my_user"`

## Manage Roles

### Change role password

`ALTER ROLE super WITH PASSWORD 'secret123';`
