[README.md](README.md)

# PyCharm~~

## Inspections

Note: PyCharm seems to implement it's own linter instead of using [pylint](pylint.md).

### Comments to disable inspections for a limited amount of scope

An inspection may be disabled for a statement, method/function, or class using a comment of the form:

`# noinspection INSPECTION_CODE`

#### Selected Inspection Codes 

| INSPECTION_CODE        | Description                                               |
| ---------------------- |-----------------------------------------------------------|
| `PyMethodMayBeStatic`  | Disable "method may be static" inspection for this method |
| `PyBroadException`     | For when you want to `except Exception`                   |
| `PyTypeChecker`        | Disable "Incorrect type" inspection.  i.e. using the wrong type of argument in a call. |

A list of these inspection codes is available at [https://gist.github.com/pylover/7870c235867cf22817ac5b096defb768](https://gist.github.com/pylover/7870c235867cf22817ac5b096defb768)



