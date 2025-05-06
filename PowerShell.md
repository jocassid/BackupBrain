[README.md](README.md)

# PowerShell

## Using PowerShell

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

### Search for a file

`Get-Childitem –Path C:\ -Include *HSG* -File -Recurse -ErrorAction SilentlyContinue`

## Programming Powershell

### Built-In variables

| Variables         | Description                                 |
|-------------------|---------------------------------------------|
| `$PSVersionTable` | Contains a table of PowerShell version info |

### Hashtables

```PowerShell
$
```

