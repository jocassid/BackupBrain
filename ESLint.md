[README.md](README.md)

# [ESLint](https://eslint.org)

## Disable ESLint for a line

Disable ESLint for next line

```javascript
// eslint-disable-next-line  @typescript-eslint/no-explicit-any`
var thing = new Thing();
```
Disable current line:

```javascript
var thing = new Thing(); // eslint-disable-line no-use-before-define
```


