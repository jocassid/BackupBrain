[README.md](README.md)

# su/sudo

## Changing user w/ sudo & su

| Command                  | Description                              |
|--------------------------|------------------------------------------|
| `sudo su`                | switch to root                           |
| `sudo su -`              | switch to root w/ root's environment     |
| `sudo su - SOME_USER`    | switch to SOME_USER w/ their environment |
| `sudo -u SOME_USER psql` | run command (i.e. psql) as SOME_USER     |

## Run a command as another user

`sudo -u USER COMMAND` for example `sudo -u postgres psql`