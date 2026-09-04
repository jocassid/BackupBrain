[README.md](README.md)

# Alpine, ash, apk

## Alpine

### services

Alpine uses `rc-service` to manage services. However, the "slim" versions of 
Alpine do not include `rc-service` or even an init system 
(which rc-service requires).

The Docker way of doing things splits services onto separate containers with 
Docker ensuring that those containers are running.

## ash

* supposedly you can run a command from history via `!42` (or whatever the 
* number is).  The `fc` command (program?) was also mentioned. 


## apk

* It's not `apk install` it's `apk add PACKAGE_NAME`

Frequently? installed package:

* `postgresql18-dev` (contains pg_config executable used by psycopg2-binary)
* `util-linux` (pulls in `whereis` and some other stuff)