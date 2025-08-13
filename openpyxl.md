[README.md](README.md)

# openpyxl

## Determine if row is hidden

```python
dimension = sheet.row_dimensions.get(row_index)
is_hidden = dimension and dimension.hidden:
```