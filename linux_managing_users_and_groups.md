[README.md](README.md)

# Linux Users and Groups


## Create a User

### Ubuntu

`sudo adduser USERNAME`

## Granting sudo privileges

`sudo usermod -aG sudo USERNAME`


## Check the user’s login shell and password status.

### Check User's shell

`getent passwd username`

* If the last field is something like /bin/bash or /bin/sh, login is allowed.
* If it is /usr/sbin/nologin or /bin/false, normal login is blocked.

### Check password/account status:

`sudo passwd -S username`

Common results:

| Code | Meaning      |
|------|--------------|
| P    | password set |
| L    | locked       |
| NP   | no password  |

## inspect account expiry:

`sudo chage -l username`

Most common signs a user cannot log in:

* shell is nologin or false
* password is locked
* account is expired