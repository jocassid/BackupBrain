[README.md](README.md)

# SQLite

## sqlite client

- Command line program to interact with SQLite database (Similar to PostreSQL's psql)

| .command      | description                                |
|---------------|--------------------------------------------|
| `.open`       | open database                              |
| `.help`       | list of commands                           |
| `.tables`     | list of tables                             |
| `.schema`     | list of tables and columns                 |
| `.quit`       | exit sqlite client                         |
| `.mode table` | will display query results in table format |


## List table columns

`PRAGMA table_info(my_table)`