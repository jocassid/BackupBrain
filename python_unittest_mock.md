[README.md](README.md)

# unittest.mock

## MagicMock

### Getting MagicMock to return a different value each time it is called.

Use `side_effect` argument instead of `return_value`.  Pass `side_effect` an iterable or a function.
**NOTE**: If you're mocking a generator, use `return_value=SOME_LIST` 

```python
instance = MyClass()
instance.method = MagicMock(side_effect=[1, 2, 3, 4])
```

```python
def rand_hostname():
    return faker.hostname()

instance = MyClass()
instance.method = MagicMock(side_effect=rand_hostname)
```


### assert methods

| Method                                     | Notes                                                  |
|--------------------------------------------|--------------------------------------------------------|
| `assert_called()`                          |                                                        |
| `assert_called_once()`                     |                                                        |
| `assert_called_with(*args, **kwargs)`      |                                                        |
| `assert_called_once_with(*args, **kwargs)` |                                                        |
| `assert_any_call(*args, **kwargs)`         |                                                        |
| `assert_has_calls(calls, any_order=False)` | `calls` is a list of `call` objects (see Call section) |
| `assert_not_called()`                      |                                                        |

## call

 Encapsulates a set of arguments to a function/method.  `call(*args, **kwargs)` .
**Note:** `call` is lowercase.
 
```python
from unittest.mock import call

instance = MyClass()
instance.other_method = MagicMock()

instance.calls_other_method()

instance.other_method.assert_has_calls(
    [call(1, foo='bar'), call(2, yada='yada')]
)
```