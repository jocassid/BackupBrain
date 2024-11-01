[README.md](README.md)

# Angular

## Directive or what?

| Type                    | Examples                                                     | Used For                                                                     |
|-------------------------|--------------------------------------------------------------|------------------------------------------------------------------------------|
| Structural Directive    | `*ngFor`, `*ngIf`                                            | Manipulate the DOM                                                           |
| Event binding?          | `(click)="clickSomething($event)"`                           | Call event handler                                                           |
| Event emitter           | `<my-component (outputValue)="someMethod()"></my-component>` | Output from comopoent                                                        |
| Property Binding        | `[foo]="bar"`                                                | Pass value to `@input` of component                                          |
| Angular template syntax | `@if (loggedIn){ <p>Welcome</p>`                             | Programmatically controlling DOM structure.  NOTE: Angular version > 16 only |

