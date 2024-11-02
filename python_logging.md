[README.md](README.md)

## Logging in Python

* [Record Attributes](https://docs.python.org/3.8/library/logging.html#logrecord-attributes) - 
How you specify the log format

### Simple 1 File Logging

```python
from logging import basicConfig, DEBUG, getLogger

logger = getLogger(__name__)

def main():
    logger.info("I've logged something WOOHOO!")

if __name__ == '__main__':
    basicConfig(
        format=""
        filename='pip_viz.log',
        level=DEBUG,
    )
```