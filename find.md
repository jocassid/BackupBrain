[README.md](README.md)

# find

## Running a command on files found

```bash
find . -name *.pyc -exec rm {} \;
```

## Excluding one or more directories from a search

### To exclude `./static/node_modules` from search
```bash
find . -path ./static/node_modules -prune -o -name datatables.min.css -print
```

### To exclude `./static/node_modules` and `./static/angular/node_modules` from search
```bash
find . -type d \( -path ./static/node_modules -o -path ./static/angular/node_modules) -prune -o -name '*.txt' -print
```

## To search by file size

### For files larger than 2GB
```bash
find . -size +2G
```

### For Files smaller than 2GB
```bash
find . -size -2G
```

### For files between 1GB and 2GB
```bash
find . -size +1GB -size -2GB
```

### File Size Units

| Unit | Value           |
|------|-----------------|
| c    | bytes           |
| w    | two-byte words  |
| b    | 512-byte blocks |
| k    | Kilobytes       |
| G    | Gigabytes       |

