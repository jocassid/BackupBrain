[README.md](README.md)

# Miscellaneous Python

## Datetimes with Timezones

```python
from datetime import datetime, timezone
from zoneinfo import ZoneInfo

utc_dt = datetime(2025, 12, 25, tzinfo=timezone.utc)
nyc_dt = datetime(2025, 12, 25, tzinfo=ZoneInfo('America/New_York'))
toronto_or_montreal_dt = datetime(2025, 12, 25, tzinfo=ZoneInfo('America/Toronto'))

utc_now = datetime.now(timezone.utc)
utc_now2 = datetime.now(ZoneInfo('UTC'))
```

## String Formatting

| Code                   | Description                                                                  |
|------------------------|------------------------------------------------------------------------------|
| `f"{1234.567:10.2f}"`  | `10` is the total width, `2` is the number of places after the decimal point | 
| `f"{1234.567:10,.2f}"` | As before, but with `,` as thousands separator                               |
| `f"{1234567:12,}"`     | `12` is total width.  show integer w/ thousands separator                    |


## Virtualenv / packages Managers Other than [pip](pip.md)

- [pipenv](https://pipenv.pypa.io/en/latest/)
- [pipx](https://pipx.pypa.io/latest/)
- [PDM](https://pdm-project.org/en/latest/)
- [poetry](https://python-poetry.org/)
- [conda](https://docs.conda.io/en/latest/)
- [uv](https://docs.astral.sh/uv/)

Note: The default `conda` package repository requires a license for commercial use.


## Programmatically Get Line number

```python
from inspect import currentframe

def get_line_number():
    cf = currentframe()
    return cf.f_back.f_lineno
```
