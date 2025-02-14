[README.md](README.md)

# JavaScript

## Web APIs

* [HTML DOM](https://developer.mozilla.org/en-US/docs/Web/API/HTML_DOM_API)
  * [HTMLElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement)
    * [HTMLElement.style](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/style)
* [CSS Object Model](https://developer.mozilla.org/en-US/docs/Web/API/CSS_Object_Model)
  * [CSSStyleDeclaration](https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration)

## Operators

| Operator | Description                                                                                                                                                |
|----------|------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `...`    | Known as "Spread Syntax".  Expands an iterable.  Works in a way similar how `*args` is expanded to call `bar` in to `def foo(*args): bar(*args)` in Python |


## Truthiness WTFs

Values used in these examples:
```javascript
emptyArray = [];
```

| Expression            | Result  | Do this instead                                       |
|-----------------------|---------|-------------------------------------------------------|
| `emptyArray == []`    | `false` | `Array.isArray(emptyArray) && emptyArray.length == 0` |
| `Boolean(emptyArray)` | `false` | `Array.isArray(emptyArray) && emptyArray.length == 0` |


### For more sane truthiness in JavaScript
```javascript
function py_bool(value){
    if( Array.isArray(value) ){
        return value.length > 0;
    }
}
```


## String Methods

| Python              | JavaScript          | Notes                                                               |
|---------------------|---------------------|---------------------------------------------------------------------|
| `t[3]`              | `t.charAt(3)`       | Doesn't support negative indices                                    |
| `t[-1]`             | `t.at(-1)`          | Like charAt, but supports negative indices                          |
| `t.endswith('foo')` | `t.endsWith('foo')` |                                                                     |  
| `'foo' in t`        | `t.includes('foo')` |                                                                     |
| `"".join([1,2,3])`  | `[1,2,3].join('')`  | If no argument is passed to Array.join, values are joined by commas |

## Array Methods

Values used in these examples:
```javascript
a = [1, 2, 3];
```

| Python            | JavaScript           | Notes                                                                                                                                                                                                                                                  |
|-------------------|----------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `a.index(2)`      | `a.indexOf(2)`       | JavaScript version returns -1 if value not found.  Python version raises ValueError                                                                                                                                                                    |
| `2 in a`          | `a.includes(2)`      |                                                                                                                                                                                                                                                        |
| `a.append(4)`     | `a.push(4)`          |                                                                                                                                                                                                                                                        | 
| `a.insert(0, 10)` | `a.splice(0, 0, 10)` | In Python, splice would be defined `def splice(start, deleteCount, *items)`.<br/>`deleteCount` is the number of elements to remove.  Splice is wierd see https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/splice |


## Object Methods

The following object is used in these examples `obj = {'a': 'alpha', b: 'bravo}`

| Python                | JavaScript            | Notes                                            |
|-----------------------|-----------------------|--------------------------------------------------|
| `list(obj.keys())`    | `Object.keys(obj)`    | `Object.keys` returns an array of keys           |
| `list(obj.values())`  | `Object.values(obj)`  |                                                  |
| `list(obj.items())`   | `Object.entries(obj)` | `for(const [key, value] of Object.entries(obj))` | 
|                       |                       |                                                  |

## Set Methods

Values used in these examples:
```Javascript
a = new Set([1, 2]);
b = new Set([2, 3]);
```

| Python     | JavaScript    | Notes                                                                |
|------------|---------------|----------------------------------------------------------------------|
| `a.pop(1)` | `a.delete(1)` | JavaScript version returns true if item was present, false otherwise |


## Comprehension Equivalents

| Type   | Python                     | JavaScript                                    | Notes                                     |
|--------|----------------------------|-----------------------------------------------|-------------------------------------------|
| Object | `{k: v for k, v in pairs}` | `Object.fromEntries(iterableOfKeyValuePairs)` |                                           |
| Array  | `[i for i in iterable]`    | `Array.from(iterable)`                        | Has mapFn and thisArg optional parameters |
| Set    | `{i for i in iterable}`    | `new Set(iterable)`                           |                                           |


## Dates and Times

For the Python in these examples we assume that the following import has taken place
```python
from datetime import datetime, date, time, timedelta
```

**NOTE:** JavaScript doesn't have different classes for datetime and date there is only Date

| Python                                       | JavaScript                    | Notes                                                                                                                                                          |
|----------------------------------------------|-------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `date(2025, 2, 2)`                           | `Date(2025, 1, 2)`            | Month is specified using a `monthIndex` (i.e. January is 0)                                                                                                    |
| `datetime.strptime('2025-02-02', '%Y-%m-%d)` | `Date('2025-02-02T00:00:00')` | The `'T00:00:00'` is required.  `'2025-02-02'` is not a valid date string.  If you pass an invalid date, the value returned is just the current date and time. |

