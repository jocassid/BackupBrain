[README.md](README.md)

# PowerShell

## Using PowerShell

### Get/Set Environment Variable

To get an environment value

`$p = $env:path`

To set environment value

`$env:foo = 'bar'`

## Linux Equivalents

| Linux                      | PowerShell                                  |
|----------------------------|---------------------------------------------|
| `cat`                      | `Get-Content`, `Set-Content`, `Add-Content` |
| `find`                     | `Get-ChildItem`                             |
| `grep`                     | `Select-String`                             |
| `md5sum`, `sha256sum`, etc | `Get-FileHash`                              |


### `cat`

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

### `find`

#### Search for a file
`Get-Childitem –Path C:\ -Include *HSG* -File -Recurse -ErrorAction SilentlyContinue`

### `grep`

#### Determine if a file has at least 1 matching line
```powershell
$hasMatch = Select-String -Path "C:\temp\app.log" -Pattern "ERROR 500" -Quiet
if ($hasMatch) { "Found" } else { "Not found" }
```
Notes:

-Pattern is regex by default.
For plain text matching (not regex), use -SimpleMatch:
Select-String -Path "C:\temp\app.log" -Pattern "ERROR 500" -SimpleMatch -Quiet
If you want exact whole-line match, use anchors:

Select-String -Path "C:\temp\app.log" -Pattern "^ERROR 500$" -Quiet



## Cmdlets

### `Get-FileHash`

Note: that there is only 1 hyphen in `Get-FileHash`

| Command                                 | Descriptions                                   |
|-----------------------------------------|------------------------------------------------|
| `Get-FileHash SOME_FILE`                | `Get-FileHash` will generate SHA256 by default |
| `Get-FileHash -Algorithm MD5 SOME_FILE` | Generate MD5 of SOME_FILE                      |












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

