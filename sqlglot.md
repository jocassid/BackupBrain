[README.md](README.md)

# [sqlglot](https://sqlglot.com/sqlglot.html)

## Pretty Print SQL

```python
from sqlglot import transpile

sql = "select a, b, c from my_table where x = 1 and y = 2 order by a"

formatted_sql = transpile(
    sql,
    read='postgres',
    write='postgres',
    pretty=True,
    indent=2,
    keyword_case='upper',
    identifier_case='lower',  # Postgres is wierd with case, not sure if this works
)[0]

```