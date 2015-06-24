---
type: guideline
title: Color
resources:
  files:
    - name: "IBM Color Palette ASE"
      source: /assets/color/ibm-color-palette.ase
  links:
    - name: "IBM Color Guidelines"
      source: http://www.ibm.com/design/language/framework/visual/color.shtml
    - name: "IBM Design Language Swatch Book"
      source: http://www.ibm.com/design/language/resources/swatch-book.shtml
    - name: "Official Sass Color Palettes"
      source: https://github.com/IBM-Design/colors
variables:
  primaryColors:
    instructions: "Choose a primary and secondary color."
    colors:
      - palette: Blue
        tone: 60
        adjectives:
          - Trustworthy
          - Systematic
      - palette: Teal
        tone: 60
        adjectives:
          - Aware
          - Approachable
  blue:
    instructions: "Blue"
    colors:
      - palette: Blue
        tone: 10
      - palette: Blue
        tone: 20
      - palette: Blue
        tone: 30
      - palette: Blue
        tone: 40
      - palette: Blue
        tone: 50
      - palette: Blue
        tone: 60
      - palette: Blue
        tone: 70
      - palette: Blue
        tone: 80
      - palette: Blue
        tone: 90
      - palette: Blue
        tone: 100
  teal:
    instructions: "Teal"
    colors:
      - palette: Teal
        tone: 10
      - palette: Teal
        tone: 20
      - palette: Teal
        tone: 30
      - palette: Teal
        tone: 40
      - palette: Teal
        tone: 50
      - palette: Teal
        tone: 60
      - palette: Teal
        tone: 70
      - palette: Teal
        tone: 80
      - palette: Teal
        tone: 90
      - palette: Teal
        tone: 100
  orange:
    instructions: "Orange"
    colors:
      - palette: Orange
        tone: 10
      - palette: Orange
        tone: 20
      - palette: Orange
        tone: 30
      - palette: Orange
        tone: 40
      - palette: Orange
        tone: 50
      - palette: Orange
        tone: 60
      - palette: Orange
        tone: 70
      - palette: Orange
        tone: 80
      - palette: Orange
        tone: 90
      - palette: Orange
        tone: 100
  yellow:
    instructions: "Yellow"
    colors:
      - palette: Yellow
        tone: 10
      - palette: Yellow
        tone: 20
      - palette: Yellow
        tone: 30
      - palette: Yellow
        tone: 40
      - palette: Yellow
        tone: 50
      - palette: Yellow
        tone: 60
      - palette: Yellow
        tone: 70
      - palette: Yellow
        tone: 80
      - palette: Yellow
        tone: 90
      - palette: Yellow
        tone: 100
  green:
    instructions: "Green"
    colors:
      - palette: Green
        tone: 10
      - palette: Green
        tone: 20
      - palette: Green
        tone: 30
      - palette: Green
        tone: 40
      - palette: Green
        tone: 50
      - palette: Green
        tone: 60
      - palette: Green
        tone: 70
      - palette: Green
        tone: 80
      - palette: Green
        tone: 90
      - palette: Green
        tone: 100
  grays:
    instructions: "Grays"
    colors:
      - palette: Gray
        tone: 10
      - palette: Gray
        tone: 20
      - palette: Gray
        tone: 30
      - palette: Gray
        tone: 40
      - palette: Gray
        tone: 50
      - palette: Gray
        tone: 60
      - palette: Gray
        tone: 70
      - palette: Gray
        tone: 80
      - palette: Gray
        tone: 90
      - palette: Gray
        tone: 100
  coolGrays:
    instructions: "Cool Grays"
    colors:
      - palette: Cool-Gray
        tone: 10
      - palette: Cool-Gray
        tone: 20
      - palette: Cool-Gray
        tone: 30
      - palette: Cool-Gray
        tone: 40
      - palette: Cool-Gray
        tone: 50
      - palette: Cool-Gray
        tone: 60
      - palette: Cool-Gray
        tone: 70
      - palette: Cool-Gray
        tone: 80
      - palette: Cool-Gray
        tone: 90
      - palette: Cool-Gray
        tone: 100
  warmGrays:
    instructions: "Warm Grays"
    colors:
      - palette: Warm-Gray
        tone: 10
      - palette: Warm-Gray
        tone: 20
      - palette: Warm-Gray
        tone: 30
      - palette: Warm-Gray
        tone: 40
      - palette: Warm-Gray
        tone: 50
      - palette: Warm-Gray
        tone: 60
      - palette: Warm-Gray
        tone: 70
      - palette: Warm-Gray
        tone: 80
      - palette: Warm-Gray
        tone: 90
      - palette: Warm-Gray
        tone: 100
  examples:
    grayExamples:
      neutralYes:
        title: "Correct combination"
        visualDisplay: /images/color/palette_grays.svg
        sentiment: positive
      neutralNo:
        title: "Incorrect Combination"
        visualDisplay: /images/color/palette_graysmixed.svg
        sentiment: negative
  example:
    watsonColors:
      blue:
        title: "Blue"
        visualDisplay: /images/color/strip_blue.svg
      red:
        title: "Teal"
        visualDisplay: /images/color/strip_teal.svg
      orange:
        title: "Orange"
        visualDisplay: /images/color/strip_orange.svg
      yellow:
        title: "Yellow"
        visualDisplay: /images/color/strip_yellow.svg
      green:
        title: "Green"
        visualDisplay: /images/color/strip_green.svg
    lightExample:
      visualDisplay: /images/color/wdg_example1.svg
      title: "Example: Light Palette"
      description: "Blue is used as a primary color, accented with green as a secondary color. Various tints and shades of those two colors are used to create contrast and add visual interest, while maintaining overall consistency."
    darkExample:
      visualDisplay: /images/color/wdg_example2.svg
      title: "Example: Dark Palette"
      description: "Blue is used as a primary color, accented with orange as a secondary color. When using a dark color palette, we recommend steering clear of pure black as some users are sensitive to high contrast colors."
---

Color is a crucial component of visual vernacular, helping to unify the look and feel of all communications. The [IBM Design Language](http://www.ibm.com/design/language/framework/visual/color.shtml) comprises a wide spectrum of colors; IBM Watson relies on a defined subset of those colors to establish its unique presence while respecting the broader IBM Design guidelines.

## Creating a Color Palette

It is recommended to choose no more than two or three colors when creating a palette. This allows users to make fast associations with forms and elements and also makes your product more useful. Please refer to the color palette section of the [IBM Design Language](http://www.ibm.com/design/language/framework/visual/color.shtml) for more detailed information on color palettes.

### Choosing a Primary Color

The [colors chosen for IBM Watson](#color-swatches) are flexible and distinguish Watson as a brand across all user experiences. The colors were chosen based on color psychology to support the Watson brand attributes, reinforce Watson's personality, and set the tone of each specific product.  We recommend picking one primary color from the two listed below then choosing secondary colors and complementary greytones and neutrals.

{{ _color.adjectiveSwatches(primaryColors) }}

### Choosing a Secondary Color

Choose one or two different secondary colors from the full recommended Watson color palette displayed below. Use the various tints and shades of those colors as needed. As you combine colors, be sure to consider accessibility requirements. Use the [color swatches](#color-swatches) to see the specific color names and values.

{{ _example.compare(example.watsonColors) }}

### Choosing Supporting Grays

When selecting a supporting gray palette to complement your colors, it is recommended to stay within the same tone. Warm grays should remain with warm grays and not be mixed with the cool and normal hues.

{{ _example.compare(examples.grayExamples) }}

### Choosing Colors Outside the Recommended Watson Palette

IBM Watson recommends all Watson branded products remain within our recommended color palette. However, we understand that different products might need additional colors to evoke a different emotional quality.  If additional colors are needed, the full [IBM Color Palette](http://www.ibm.com/design/language/resources/swatch-book.shtml) is at your fingertips.

## Applying a Color Palette

Color is a powerful component of design that helps establish hierarchy within a UI. The examples below display how the Watson color palette can effectively be applied to an interface. In these examples, two colors from the recommended palette are used to highlight key UI elements. Ample white space and neutrals create balance and direct users’ attention. Most importantly, color is incorporated as one aspect of the UI design; it is supported by other fundamental design choices like composition and typography.

{{ _example.large(example.lightExample) }}

{{ _example.large(example.darkExample) }}

## Alert, Remind, and Notify Colors

The colors chosen for notifications should correspond with the severity of the message. Chosen colors should aim to motivate the user, rather than threatening or intimidating him or her. The [IBM Design Language](http://www.ibm.com/design/language) also recommends the combination of both iconography and color to accurately assist the user. Be sure to choose tints and shades based on your UI and accessibility requirements.

## Color Swatches

Below is a collection of swatches from the recommended Watson Palette.

{{ _color.groupSwatches(blue) }}

{{ _color.groupSwatches(teal) }}

{{ _color.groupSwatches(orange) }}

{{ _color.groupSwatches(yellow) }}

{{ _color.groupSwatches(green) }}

{{ _color.groupSwatches(grays) }}

{{ _color.groupSwatches(coolGrays) }}

{{ _color.groupSwatches(warmGrays) }}

