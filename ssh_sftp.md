[README.md](README.md)

# ssh/sftp

## Port
`ssh` and `sftp` use port 22

## To bypass public key authentication

Use this if you want to enter the password for the host rather than entering 
your password to unlock `/home/user/.ssh/id_rsa` use the following command:

`ssh -o PubkeyAuthentication=no USER@HOST`

## When host has been changed

Scenario: The old server was replaced and it's fingerprint won't match.  
Remove the old fingerprint first.

`ssh-kegen -R HOSTNAME_OR_IP`