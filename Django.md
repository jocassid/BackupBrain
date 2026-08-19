[README.md](README.md)

# Django

## Exceptions

`RelatedObjectDoesNotExist` - This class is built on the fly, but is a 
subclass of `AttributeError`

## Referencing items in App

| Item       | Expression                 |
|------------|----------------------------|
| URL name   | `'my_app:url_name'`        |
| Permission | `'my_app.can_add_widgets'` |
| Model      | `'my_app.MyModel'`         | 

## Field Lookups

**Note:** I'm starting with the ones I forget about

| Lookup     | Description                      |
|------------|----------------------------------|
| `__regex`  | Case sensitive regex match [1]   |
| `__iregex` | Case insensitive regex match [1] |


## ./manage.py shell

I typically use `<CTRL> + z` to exit the REPL and I've wound up with a bunch 
of `./manage.py shell` processes leftover.  Use `<CTRL> + d` exit and end 
the process.


## Notes:
1. Regex syntax of database used except for SQLite which doesn't have regex 
support so it uses Python's re module