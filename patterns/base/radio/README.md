# Radio Button

A single radio button, `<input type=["radio"]>`, is a form field in which only one of the given options may be chosen. In order to allow efficient screen reader use, add an aria-role of "radio" and "radiomenuitem" if it is part of a menu selection. These should be enclosed within a "radiogroup" aria role. Upon a selected choice, add the aria-checked attribute.

## Available Classes

Styling can be applied in the following ways:

* `.base--radio` - class on each radio button
* `.base--STYLED radio` - `<radio>` tag inside of a form with class of `.base--STYLED`
* `%base--radio` - extended through Sass
