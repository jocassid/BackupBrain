[README.md](README.md)

# systemctl

## Managing services

| Command                                               | Description                       |
|-------------------------------------------------------|-----------------------------------|
| `systemctl list-units --type=service`                 | Lists all services running or not |
| `systemctl list-units --type=service --state=running` | List running services             |
| `systemctl list-unit-files --type=service`            | Detailed listing of services      |
## Services

### List Services

`systemctl list-units --type=service`

#### Filter by state

States include: `running`, `exited`, `enabled`, `disabled`, etc.

`systemctl list-units --type=service --state=running`

Using the `--all` option will also show loaded, but inactive units

`systemctl list-units --type=service --all`

###  Show Service Status

`systemctl status postgresql@12-main.service`

You can use wildcards in service name

`systemctl status postgres*`

### Start, Stop, and Restart a Service

Article on how to start, stop, and restart services 
https://phoenixnap.com/kb/start-stop-restart-linux-services

`sudo systemctl stop postgresql@12-main.service`
