[README.md](README.md)

# MediaWiki

## Table formatting

From [https://www.mediawiki.org/wiki/Help:Tables](https://www.mediawiki.org/wiki/Help:Tables)

| Markdown | Description                                                                                                                                                                        |
|----------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `{\|`    | table start, required                                                                                                                                                              | 
| `\|+`    | table caption, optional; only between table start and table row                                                                                                                    |
| `\|-`    | table row, optional on first row—wiki engine assumes the first row                                                                                                                 |
| `!`      | table header cell, optional. Consecutive table header cells may be added on same line separated by double marks (`!!`) or start on new lines, each with its own single mark (`!`). |
| `\|`     | table data cell, optional. Consecutive table data cells may be added on same line separated by double marks (`\|\|`) or start on new lines, each with its own single mark (`\|`).  |  
| `\|}`    | table end, required                                                                                                                                                                |	

### Colspans and Rowspans

```mediawiki
{| class="wikitable"
!colspan="6"|Shopping List
|-
|rowspan="2"|Bread & Butter
|Pie
|Buns
|Danish
|colspan="2"|Croissant
|-
|Cheese
|colspan="2"|Ice cream
|Butter
|Yogurt
|}
```