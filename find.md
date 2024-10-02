[README.md](README.md)

# find

## Running a command on files found

```bash
find . -name *.pyc -exec rm {} \;
```

## Excluding one or more directories from a search

To exclude `./static/node_modules` from search:
```bash
find . -path ./static/node_modules -prune -o -name datatables.min.css -print
```

To exclude `./static/node_modules` and `./static/angular/node_modules` from search:

```bash
find . -type d \( -path ./static/node_modules -o -path ./static/angular/node_modules) -prune -o -name '*.txt' -print
```
