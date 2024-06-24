[README.md](README.md)

## TypeScript

### YouTubers, Bloggers, etc

#### Matt Pocock

- [https://www.youtube.com/@mattpocockuk](https://www.youtube.com/@mattpocockuk)
- [https://www.totaltypescript.com/](https://www.totaltypescript.com/)


### variable annotations (find actual term for this)

```typescript
let a?: number;     // ? indicates a is an optional (may be null or undefined)
let b!: number;     // ! Non-null assertion.  Tells that value won't be null or undefined
```


### Constructor Shorthand

This ...
```typescript
class Point {
    private x?: number;
    private y?: number;

    constructor(x?: number, y?: number) {
        this.x = x;
        this.y = y;
    }
}
```

can be re-written as

```typescript
class Point {

    constructor(private x?: number, private y?: number) {
        // declaring members or assignments are done implicitly
    }
}
```

#### Properties

```typescript
class Point {
    
    constructor(_x?: number, _y?: number) {
    }
    
    get x(){
        return this._x;
    }
    
    set x(value){
        this._x = value;
    }
}
```
