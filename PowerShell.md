[README.md](README.md)

## PowerShell

### Get/Set Environment Variable

To get an environment value

`$p = $env:path`

To set environment value

`$env:foo = 'bar'`

### Generating hash of file

`Get-FileHash SOME_FILE`

This will generate SHA256 by default.  To specify what type of hash to 
generate, use the `-Algorithm` option. 

`Get-FileHash -Algorithm MD5 SOME_FILE`

Note: that there is only 1 hyphen in `Get-FileHash`