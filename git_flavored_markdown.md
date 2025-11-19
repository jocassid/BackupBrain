[README.md](README.md)

# Git-Flavored Markdown

## Headings

# Heading 1 - `# Heading 1`
## Heading 2 - `## Heading 2`
### Heading 3 - `### Heading 3`
#### Heading4 - `#### Heading 4`

## Markdown table vs HTML table

I was looking into how you create a Markdown table containing a lot of text 
w/out creating long, unwieldy lines in the Markdown file.  It looks like the 
only way around this is to create an HTML table within the Markdown file.  The
default style of the HTML table matches the version coded in markdown, however
you lose the formatting shorthands in Markdown.  For instance in the markdown
version of the table below, I can use backticks for code formatting, but in 
the HTML version I need to use a `<code>` element.

### Table coded in markdown

| col1       | col2         |
|------------|--------------|
| row1, col1 | row1, col2   |
| row2, col1 | `row2, col2` |

### Table coded in HTML

<table>
  <thead>
    <tr>
      <th>col1</th>
      <th>col2</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>row1, col1</td>
      <td>row1, col2</td>
    </tr>
    <tr>
      <td>row2, col1</td>
      <td><code>row2, col2</code></td>
    </tr>
  </tbody>
</table>

## Resources

* [https://markdowncheatsheet.com](https://markdowncheatsheet.com/reference)
* [Advanced Markdown Tables: Complete Guide to Formatting, Styling, and Enhanced Features](https://blog.markdowntools.com/posts/markdown-tables-advanced-features-and-styling-guide)