[README.md](README.md)

# JavaScript

## Web APIs

* [HTML DOM](https://developer.mozilla.org/en-US/docs/Web/API/HTML_DOM_API)
  * [HTMLElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement)
    * [HTMLElement.style](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/style)
* [CSS Object Model](https://developer.mozilla.org/en-US/docs/Web/API/CSS_Object_Model)
  * [CSSStyleDeclaration](https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration)

## String Methods

| Python              | JavaScript          | Notes                                                               |
|---------------------|---------------------|---------------------------------------------------------------------|
| `t[3]`              | `t.charAt(3)`       | Doesn't support negative indices                                    |
| `t[-1]`             | `t.at(-1)`          | Like charAt, but supports negative indices                          |
| `t.endswith('foo')` | `t.endsWith('foo')` |                                                                     |  
| `'foo' in t`        | `t.includes('foo')` |                                                                     |
| `"".join([1,2,3])`  | `[1,2,3].join('')`  | If no argument is passed to Array.join, values are joined by commas |

## Array Methods

| Python               | JavaScript               | Notes                                                                               |
|----------------------|--------------------------|-------------------------------------------------------------------------------------|
| `[1, 2, 3].index(2)` | `[1, 2, 3].indexOf(2)`   | JavaScript version returns -1 if value not found.  Python version raises ValueError |
| `2 in [1, 2, 3]`     | `[1, 2, 3].includes(2)`  |                                                                                     |


## Object Methods

The following object is used in these examples `obj = {'a': 'alpha', b: 'bravo}`

| Python                | JavaScript            | Notes                                  |
|-----------------------|-----------------------|----------------------------------------|
| `list(obj.keys())`    | `Object.keys(obj)`    | `Object.keys` returns an array of keys |
| `list(obj.values())`  | `Object.values(obj)`  |                                        |
| `list(obj.items())`   | `Object.keys(obj)`    |                                        | 
|                       |                       |                                        |

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

## Comprehension Equivalents

| Type   | Expression                                  | Notes                                     |
|--------|---------------------------------------------|-------------------------------------------|
| Object | Object.fromEntries(iterableOfKeyValuePairs) |                                           |
| Array  | Array.from(iterable)                        | Has mapFn and thisArg optional parameters |
| Set    | new Set(iterable)                           |                                           |
