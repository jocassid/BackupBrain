[README.md](README.md)

# urllib

## Encode query string

```python
>>> from urllib.parse import urlencode
>>> urlencode({'foo': 'bar', 'yada': 'yada'})
'foo=bar&yada=yada'
>>> urlencode([('a', 1), ('a', 2)])
'a=1&a=2'
```
