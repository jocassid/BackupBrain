[README.md](README.md)

# CSS

## Units of Measure

| Unit                         | Definition                                                                           |
|------------------------------|--------------------------------------------------------------------------------------|
| `vh`                         | viewport height 50vh is 50% the height of the viewport (NOT TOTAL HEIGHT OF DOCUMENT |
| `vw`                         | viewport width 25vw is 25% the height of the viewport                                | |

## Attribute Selectors

```css
a[title]{}                /* has title attribute */
input[type="text"]{}      /* type attribute is "text" */
a[href*="github.com"]{}   /* href attributes contains github.com */
a[href$=".org"]{}         /* href ends-with .org.  NOT case-sensitive */ 
a[class~="logo"]{}        /* class contains word logo */
```

## `:nth-of-type` and other Tree-structured psuedo-classes

[https://developer.mozilla.org/en-US/docs/Web/CSS/Pseudo-classes](https://developer.mozilla.org/en-US/docs/Web/CSS/Pseudo-classes#tree-structural_pseudo-classes)

```css
tr:nth-of-type(3){}
tr:nth-of-type(2n){}
tr:nth-of-type(2n+1){}
tr:nth-of-type(odd){}
tr:nth-of-type(event){}
```

## Adding Glyphs

Various CSS libraries add symbols (such as up and down arrows for dropdowns or 
sorting order) by inserting a string of unicode symbols using the `::before` 
or `::after` pseudo-elements and the `content` property as shown here:

```html
<html>
    <head>
        <title>CSS Glyphs</title>
        <style>
            #target::before{
                content: "\0025b2"  /* unicode up arrow is 9650 in decimal */
            }

            #target::after{
                content: "▲"  /* used character map and the hex for the unicode character for this */
            }
    
        </style>
    </head>
    <body>
        <div>
            <span id="target">Add Glyphs around here</span>
        </div>
    </body>
</html>
```

Results in a div with contents looking like: ▲Add Glyphs around here▼

**Note:** Firefox doesn't let you select the glyph characters using the mouse
or by doing a CTRL + a .  However, it does let you do a RIGHT-CLICK > Inspect
on the glyph.  I'm not sure if other browsers let you do this.

## Grid Layout Cheat Sheet

```css
display: grid;
grid-template-columns: 1fr 1fr 1fr;
grid-template-columns: repeat(3, 1fr);
grid-column: 1 / 4;  /* start at column 1 end before column 4 */
grid-row: 1 / 3; /* 1 <= row < 3 */
column-gap: 10px;
row-gap: 1em;
gap: 1rem;
grid-area: [ROW_START] [COL_START] [ROW_END] [COL_END]
```

## Flexbox Layout Cheat Sheet

```css
display: flex;
flex-direction: row; /* alternately: column, row-reverse, or row-reverse */
/* use margins of elements in flexbox to space items a specific distance 
   apart.  There's properties for spacing out items across the flexbox */
```

## Specificity

Specificity is three numbers written as `1.2.3`.  This the meaning of this specificity is:

| 1             | 2                                    | 3                                      |
|---------------|--------------------------------------|----------------------------------------|
| Number of IDs | Number of classes (& pseudo-classes) | Number of elements (& pseudo-elements) |

In this example the border is applied with a specificity of `1.2.3`

```css
#orderForm{
    & div.shippingInfo{
        & div.address{
            & textarea{
                border: solid fuchsia 1rem;
            }            
        }
    }
}
```


