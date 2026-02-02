[README.md](README.md)

# Linux Logs

## Log locations

* Most logs are in `/var/log`
* Some in '/var/run'
* A lot are plain text files 


| Log File                | Description                                              |
|-------------------------|----------------------------------------------------------|
| `dpkg.log` / `yum.log`  | Package manager logs for Debian and Redhat based distros |   
| `kern.log`              | Records changes to kernal                                |
| `boot.log`              | Records events pertaining to system startup              | 
| `Xorg.0.log`            | X Server logs                                            |
| `wtmp.log` / `last.log` | Contains log-in data                                     |
| `btmp.log`              | Shows failed log-in attempts                             |

## Creating a Log message from command line

Use the `logger` command.

`logger "Test message"`

To specify priority using `FACILITY.LEVEL` pair

`logger -p auth.info "Test auth log"`
