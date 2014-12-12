# Radio Button

A single radio button, `<input type=["radio"]>`, is an individual form field in which only one of the given options may be chosen. In order to allow efficient screen reader use, an aria-role of "radio" (or "radiomenuitem" if it is part of a menu selection) should be included: `role="radio"`.

## Available Classes

Styling can be applied in the following ways:

* `.base--radio` - class on each radio button
* `.base--STYLED input[type="radio"]` - `<radio>` tag inside of a form with class of `.base--STYLED`
* `%base--radio` - extended through Sass
