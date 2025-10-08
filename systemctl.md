[README.md](README.md)

# systemctl

## Managing services

| Command                                               | Description                       |
|-------------------------------------------------------|-----------------------------------|
| `systemctl list-units --type=service`                 | Lists all services running or not |
| `systemctl list-units --type=service --state=running` | List running services             |
| `systemctl list-unit-files --type=service`            | Detailed listing of services      |