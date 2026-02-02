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

### Equivalent to Unix `cat` command

Use Get-Content and pipe it into Set-Content or Add-Content.
```PowerShell
# Concatenate two files into a new file
Get-Content file1.txt, file2.txt | Set-Content combined.txt

# Append multiple files into an existing file
Get-Content file1.txt, file2.txt, file3.txt | Add-Content combined.txt

# Preserve raw text (don’t split into lines)
Get-Content file1.txt, file2.txt -Raw | Set-Content combined.txt

# concatenation of files to stdout
Get-Content file1.txt, file2.txt
```

## Cmdlets of Note

| Cmdlet                                                          | Description                       |
|-----------------------------------------------------------------|-----------------------------------|
| [Select-String](https://go.microsoft.com/fwlink/?LinkID=113388) | Search for strings within file(s) |


## Programming Powershell

### Built-In variables

| Variables         | Description                                 |
|-------------------|---------------------------------------------|
| `$PSVersionTable` | Contains a table of PowerShell version info |

### Comparison Operators

| Operator  | Description                                                                 |
|-----------|-----------------------------------------------------------------------------|
| `-eq`     | equality operator                                                           |
| `-ne`     | inequality operator                                                         |
| `-match`  | Match regex (not case-sensitive)                                            |
| `-cmatch` | Match regex (case-sensitive)                                                |
| `-like`   | I'm not sure what this does exactly.  Takes a regex arg, not case-sensitive |

### Hashtables

```PowerShell
$
```

