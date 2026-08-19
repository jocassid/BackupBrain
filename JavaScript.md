[README.md](README.md)

# JavaScript

## Web APIs

* [HTML DOM](https://developer.mozilla.org/en-US/docs/Web/API/HTML_DOM_API)
  * [HTMLElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement)
    * [HTMLElement.style](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/style)
* [CSS Object Model](https://developer.mozilla.org/en-US/docs/Web/API/CSS_Object_Model)
  * [CSSStyleDeclaration](https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration)

## Operators

### `...`

Known as "Spread Syntax".  Expands an iterable.  Works in a way similar how 
`*args` is expanded to call `bar` in to `def foo(*args): bar(*args)` in Python

```JavaScript
>> foo = {a: 'alpha', b: 'bravo'}
Object { a: "alpha", b: "bravo" }

>> bar = { ... foo }
Object { a: "alpha", b: "bravo" }

>> bar = { ...foo, c: 'charlie' }
Object { a: "alpha", b: "bravo", c: "charlie" }
```

### `??`

### `!!`


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

## Equivalents to Python built-in functions

| Python built-in      | JavaScript                                       | Notes |
|----------------------|--------------------------------------------------|-------|
| `all([True, False])` | `[true, false].every((value) => Boolean(value))` |       |
| `any([True, False])` | `[true, false].some((value) => Boolean(value))`  |       |



## String Methods

| Python              | JavaScript          | Notes                                                               |
|---------------------|---------------------|---------------------------------------------------------------------|
| `t[3]`              | `t.charAt(3)`       | Doesn't support negative indices                                    |
| `t[-1]`             | `t.at(-1)`          | Like charAt, but supports negative indices                          |
| `t[1:3]`            | `t.substring(1, 3)` | String.substr is deprecated                                         |
| `t.lower()`         | `t.toLowerCase()`   |                                                                     |
| `t.endswith('foo')` | `t.endsWith('foo')` |                                                                     |  
| `'foo' in t`        | `t.includes('foo')` |                                                                     |
| `"".join([1,2,3])`  | `[1,2,3].join('')`  | If no argument is passed to Array.join, values are joined by commas |

## Array Methods

Values used in these examples:
```javascript
a = [1, 2, 3];
b = [4, 5, 6];
```

| Python            | JavaScript           | Notes                                                                                                                                                                                                                                                  |
|-------------------|----------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `a.index(2)`      | `a.indexOf(2)`       | JavaScript version returns -1 if value not found.  Python version raises ValueError                                                                                                                                                                    |
| `2 in a`          | `a.includes(2)`      |                                                                                                                                                                                                                                                        |
| `a.append(4)`     | `a.push(4)`          |                                                                                                                                                                                                                                                        | 
| `a.insert(0, 10)` | `a.splice(0, 0, 10)` | In Python, splice would be defined `def splice(start, deleteCount, *items)`.<br/>`deleteCount` is the number of elements to remove.  Splice is wierd see https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/splice |
| `a + b`           | `a.concat(b)`        | `concat` returns a new Array, a is not altered                                                                                                                                                                                                         |
| `len(a)`          | `a.length`           |                                                                                                                                                                                                                                                        |


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

| Python     | JavaScript          | Notes                                                                     |
|------------|---------------------|---------------------------------------------------------------------------|
| `a.pop(1)` | `a.delete(1)`       | JavaScript version returns true if item was present, false otherwise      |
| `a - b`    | `a.difference(b)`   | `difference`, `intersection`, `union`, etc where newly available in 2024  |
| `a & b`    | `a.intersection(b)` |                                                                           |
| `a \| b`   | `a.union(b)`        |                                                                           |
| `len(a)`   | `a.size`            |                                                                           |

* There is no join method to create a string from the elements in the Set

## Comprehension Equivalents

<table>
  <thead>
    <tr>
      <th>Type</th>
      <th>Python</th>
      <th>JavaScript</th>
      <th>Notes</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Object</td>
      <td><code>{k: v for k, v in pairs}</code></td>
      <td><code>Object.fromEntries(iterableOfKeyValuePairs)</code></td>
      <td></td>
    </tr>
    <tr>
      <td rowspan="2">Array</td>
      <td><code>[i for i in iterable]</code></td>
      <td><code>Array.from(iterable)</code></td>
      <td>Has mapFn and thisArg optional parameters</td>
    </tr>
    <tr>
      <td><code>[d.id for d in dictionaries]</code></td>
      <td><code>dictionaries.map((d) => d.id)</code></td>
      <td></td>
    </tr>
    <tr>
      <td>Set</td>
      <td><code>{i for i in iterable}</code></td>
      <td><code>new Set(iterable)</code></td>
      <td></td>
    </tr>
  </tbody>
</table>



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

## Regular Expression

<table>
    <thead>
        <tr>
            <th>Python</th>
            <th>JavaScript</th>
            <th>Notes</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>
                <code>p = re.compile(r'ab+c')</code>
            </td>
            <td>
                <code>const p = /ab+c/;</code><br/>
                <code>const p = new RegExp("ab+c");</code>
            </td>
            <td>
                
            </td>
        </tr>
    </tbody>
</table>






