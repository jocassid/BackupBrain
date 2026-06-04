[README.md](README.md)

# PostgreSQL

## \ Shorthands

| Shortcut          | Description                                                                                                                                                                                      |
|-------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `\c DATABASE`     | `use` DATABASE                                                                                                                                                                                   |
| `\d TABLE`        | Describe TABLE                                                                                                                                                                                   |
| `\dt`             | List tables in database                                                                                                                                                                          |
| `\du`             | List users on server.  Use `\du USER` for info on specific user.  **Note:** this will not indicate users with `LOGIN` permission, but will show `'Caanot Login'` for `NOLOGIN` users             |
| `\du+`            | List users on server w/ description                                                                                                                                                              |
| `\l`              | List databases in server                                                                                                                                                                         |
| `\l+`             | List databases in server w/ Size, Tablespace, and Description                                                                                                                                    |
| `\set u 'myuser'` | Set a `psql` variable (not be confused w/ other types of variables).  In these case, we're creating a variable `u` with a value of `'myuser'`.  To reference in SQL statement use `:u` or `:'u'` | 
| `\q`              | Quit `psql`                                                                                                                                                                                      |
| `\unset u`        | Unset `psql` variable  (not be confused w/ other types of variables) `u`                                                                                                                         |                                                                                                                                                                

## `psql`

### To login as a specific user

`psql -U USERNAME -d DATABASE`

* This will log into a local PostgreSQL server.  Add a `-h HOSTNAME_OR_IP` 
option if you need to connect to a different server.
* `psql` will prompt `Password for user USERNAME`
* If the USERNAME is the same as the database name you can omit the 
`-d DATABASE` option (i.e. `psql -U postgres`)

### Run a .sql  Script

`psql -d DATABASE -f my_script.sql`

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

### Show User's Permissions

These queries us a `u` psql variable.  Use `\set u 'myuser'` to set it.

#### Show User's CONNECT, CREATE, and TEMP privileges on the server's databases 

```postgresql
 SELECT d.datname,
       has_database_privilege(:'u', d.datname, 'CONNECT') AS connect,
       has_database_privilege(:'u', d.datname, 'CREATE')  AS create_db_objs,
       has_database_privilege(:'u', d.datname, 'TEMP')    AS temp
FROM pg_database d
ORDER BY d.datname;
```

#### Show user's USAGE and CREATE privileges on schemas

```postgresql
SELECT n.nspname AS schema,
       has_schema_privilege(:'u', n.oid, 'USAGE')  AS usage,
       has_schema_privilege(:'u', n.oid, 'CREATE') AS create
FROM pg_namespace n
WHERE n.nspname NOT LIKE 'pg_%'
  AND n.nspname <> 'information_schema'
ORDER BY n.nspname;
```

#### Role memberships (useful for inherited permissions.  i.e. roles comprised of other roles)

```postgresql
SELECT r.rolname AS member_of
FROM pg_auth_members m
JOIN pg_roles r ON r.oid = m.roleid
JOIN pg_roles u ON u.oid = m.member
WHERE u.rolname = :'u'
ORDER BY r.rolname;
```

### Create a role/user

```postgresql
-- W/ password
CREATE USER charles_xavier WITH PASSWORD 'MyotherCarI5Cerebro';

-- Grant login ability (by default roles are created with LOGIN permission
ALTER USER logan WITH LOGIN; 

-- Revoke login
ALTER USER logan WITH NOLOGIN;

-- Grant CREATEDB
ALTER USER charles_xavier WITH CREATEDB ;

-- Grant all privileges on database
GRANT ALL PRIVILEGES ON DATABASE school_for_gifted_db TO charles_xavier;
```

### Grant `SUPERUSER` permissions to a user

`ALTER ROLE alice WITH SUPERUSER;`

### Change role password

`ALTER ROLE super WITH PASSWORD 'secret123';`

## psycopg2 Python Binding

### Installing

* You may encounter a "pg_config executable not found." error.  This can 
be fixed by installing the `postgres-sever-dev` package for your version
i.e. `sudo apt-get install postgresql-sever-dev-16`
