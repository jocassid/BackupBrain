[README.md](README.md)

# Red Hat Enterprise Linux

## Package Management

### Search for available packages

`dnf search`

The following command may ask if you want to import GPG keys so run it 
w/out piping through grep first:

`dnf list --available | grep -i PACKAGE`

Info on package

`dnf info PACKAGE`

