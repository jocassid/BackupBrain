[README.md](README.md)

# CSS

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


