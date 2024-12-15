[README.md](README.md)

# [pytest](https://docs.pytest.org/en/stable/)

## Test that an exception is raised

```python
from pytest import raises

def test_something():
    with raises(ValueError) as exec_info:
        raise ValueError("oops")
    assert exec_info.type is ValueError
    assert "oops" == str(exec_info.value)
```

## Test system exit code

```python
from pytest import raises 
from sys import exit 

def test_sys_exit():
    with raises(SystemExit) as pytest_wrapped_e:
        exit(42)
    assert pytest_wrapped_e.type == SystemExit
    assert pytest_wrapped_e.value.code == 42
```



