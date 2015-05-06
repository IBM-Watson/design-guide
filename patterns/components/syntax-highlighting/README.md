# Syntax Highlighting

Syntax highlighting uses Prism, a lightweight, extensible syntax highlighter, to encourage good author practices. Prism is used to highlight embedded languages (e.g. CSS inside HTML, JavaScript inside HTML), code blocks, and inline code. According to the HTML5 spec, the recommended way to define a code language is a `language-xxxx` class, which is what Prism uses.

## Application Methods

Styling can be applied in the following ways:

* Include `syntax-highlighting.scss` in Sass folder
* Install [Prism](http://prismjs.com/) from Bower
* Add `language-xxx` class to a `<code>` block
