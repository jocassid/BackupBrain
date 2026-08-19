[README.md](README.md)

# PowerShell

## Resources

* Learn PowerShell - https://learn.microsoft.com/en-us/powershell/scripting/overview?view=powershell-5.1

## Using PowerShell

### Determine PowerShell Version

`$PSVersionTable`

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
| `time`                     | `Measure-Command`                           |
| `touch`                    | `New-Item`                                  |


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

### `time`

```powershell
PS C:\Users\jocassid> Measure-Command { Write-Host "foo" }
foo

Days              : 0
Hours             : 0
Minutes           : 0
Seconds           : 0
Milliseconds      : 1
Ticks             : 15426
TotalDays         : 1.78541666666667E-08
TotalHours        : 4.285E-07
TotalMinutes      : 2.571E-05
TotalSeconds      : 0.0015426
TotalMilliseconds : 1.5426
```

```PowerShell
PS C:\Users\jocassid> (Measure-Command { Write-Host "foo" }).TotalSeconds
foo
0.0015412
```

### `touch`

Creating a new file

```PowerShell
New-Item path\to\file.txt -ItemType File
```


## Cmdlets of Note

| Cmdlet                                                                                                                 | Description                                               |
|------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------|
| [Get-CimInstance](https://learn.microsoft.com/en-us/powershell/module/cimcmdlets/get-ciminstance?view=powershell-5.1)  | Get Common Information Model on processes, services, etc. |
| [Select-String](https://go.microsoft.com/fwlink/?LinkID=113388)                                                        | Search for strings within file(s)                         |


## Cmdlets

### `Get-CimInstance`

Get data from Common Information.  Provides information about processes, services, etc.
Includes process information not available through Get-Process 

| Command \*                                                                                                                                | Description                                                               |
|-------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------|
| `Get-CimInstance Win32_Process -Filter "Name = 'python.exe'"`                                                                             | Get python.exe prcesses and show info similar what `Get-Process` displays |
| `Get-CimInstance Win32_Process -Filter "Name = 'python.exe'" \| Select-Object ProcessId, Name, CommandLine`                               | Get python.exe processes and show PID, name, and CommandLine              |
| `Get-CimInstance Win32_Process \| Where-Object { $_.Name -in 'python.exe', 'pythonw.exe' } \| Select-Object ProcessId, Name, CommandLine` | Get python.exe and pythonw.exe processes |

\* The Win32_Process which show both 32 and 64 bit processes

#### Output

When running PowerShell from a virtualenv (Using venv in this case), you may 
see pairs of python.exe processes: 1 for the python.exe in the virtualenv and 
another for the python.exe in the "system" install location

```PowerShell
ProcessId Name       CommandLine
--------- ----       -----------
     2368 python.exe "C:\project1-venv\Scripts\python.exe" .\manage.py shell
     2712 python.exe C:\Users\jocassid\AppData\Local\Programs\Python\Python39\python.exe .\manage.py shell
     1168 python.exe "C:\project1-venv\Scripts\python.exe" .\manage.py runserver
    27092 python.exe C:\Users\jocassid\AppData\Local\Programs\Python\Python39\python.exe .\manage.py runserver
    26904 python.exe C:\project1-venv\Scripts\python.exe .\manage.py runserver
    19644 python.exe C:\Users\jocassid\AppData\Local\Programs\Python\Python39\python.exe .\manage.py runserver
```



### `Get-FileHash`

Note: that there is only 1 hyphen in `Get-FileHash`

| Command                                 | Descriptions                                   |
|-----------------------------------------|------------------------------------------------|
| `Get-FileHash SOME_FILE`                | `Get-FileHash` will generate SHA256 by default |
| `Get-FileHash -Algorithm MD5 SOME_FILE` | Generate MD5 of SOME_FILE                      |

### `Get-LocalGroupMember`

`Get-LocalGroupMember -Group "Administrators"`


### `Get-Process`

If you need full command line, you'll need to use `Get-CimInstance` instead



## Programming PowerShell

### Built-In variables

| Variables          | Description                                       |
|--------------------|---------------------------------------------------|
| `$PSVersionTable`  | Contains a table of PowerShell version info       |
| `$LASTEXITCODE`    | Exit code (think `return 0;`) of last program run |

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

