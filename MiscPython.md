[README.md](README.md)

# Miscellaneous Python

## Datetimes with Timezones

```python
from datetime import datetime, timezone
from zoneinfo import ZoneInfo

utc_dt = datetime(2025, 12, 25, tzinfo=timezone.utc)
nyc_dt = datetime(2025, 12, 25, tzinfo=ZoneInfo('America/New_York'))
toronto_or_montreal_dt = datetime(2025, 12, 25, tzinfo=ZoneInfo('America/Toronto'))
```

## Virtualenv / packages Managers Other than [pip](pip.md)

- [pipenv](https://pipenv.pypa.io/en/latest/)
- [pipx](https://pipx.pypa.io/latest/)
- [PDM](https://pdm-project.org/en/latest/)
- [poetry](https://python-poetry.org/)
- [conda](https://docs.conda.io/en/latest/)
- [uv](https://docs.astral.sh/uv/)

Note: The default `conda` package repository requires a license for commercial use.


## Programatically Get Line number

```python
from inspect import currentframe

def get_line_number():
    cf = currentframe()
    return cf.f_back.f_lineno
```
