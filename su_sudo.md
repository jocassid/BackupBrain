[README.md](README.md)

# su/sudo

## Changing user w/ sudo & su

| Command               | Description                              |
|-----------------------|------------------------------------------|
| `sudo su`             | switch to root                           |
| `sudo su -`           | switch to root w/ root's environment     |
| `sudo su - SOME_USER` | switch to SOME_USER w/ their environment |

## Run a command as another user

`sudo -u USER COMMAND` for example `sudo -u postgres psql`