[README.md](README.md)

# Pandas

## Setting Pandas Options

To set an option:

`pd.set_option('OPTION_NAME', VALUE)`

Reset option to default:

`pd.reset_option('OPTION_VALUE)`

### Change Dataframe display options

| `'display.'`    | Description              |
|-----------------|--------------------------|
| `max_rows`      | Max number of rows shown |
| `max_colwidth`  | Max width or columns     |

## Filter Dataframes

| Example                          | Description                                    |
|----------------------------------|------------------------------------------------|
| `df[['column1', 'column2']]`     | Only include specified columns                 |
| `df[df['column1'].isin([2, 3])]` | rows where column1 is one of a list of value   |
| `df[df['column1'] == 2]`         | rows where column1 is a specific value         |
| `df[df['column1'].notna()]`      | rows where column1 is NOT NaN (i.e. not blank) |
| `df[df['column1'].isna()]`       | rows where column1 is NaN (i.e. blank)         |

## Modify Dataframe

### Rename Column

```python
df.rename(columns={'old_name': 'new_name'}, inplace=True)
```

### Coalesce Values from 2 Columns into 1 Column

Operation similar to the `COALESCE` funtion in SQL

```python
df['coalesced'] = df['col1'].combine_first(df['col2'])
```
