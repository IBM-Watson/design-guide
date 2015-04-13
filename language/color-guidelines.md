---
type: guideline
title: Color
resources:
  files:
    - name: IBM Color Palette ASE
      source: /assets/visual/ibm-color-palette.ase
variables:
  palette-application:
    light:
      title: Light Palette
      image: /images/visual/light-palette.svg
      description: 'Primary: Blue 60, Secondary: Orange 50, Accent: Teal 40'
      caption: 'Consider users who are sensitive to brightness and high contrast colors by using a neutral value as a background color instead of pure white.'
    dark:
      title: Dark Palette
      image: /images/visual/dark-palette.svg
      description: 'Primary: Blue 30, Secondary: Orange 30, Accent: Teal 30'
      caption: 'Consider users who are sensitive to brightness and high contrast colors by using a grey value as a background color instead of pure black.'
  primary-colors:
    instructions: Choose a primary and secondary color
    colors:
      - palette: 'Blue'
        number: 60
        personality:
          - Trustworthy
          - Systematic
      - palette: 'Orange'
        number: 50
        personality: 
          - Innovation
          - Utility
      - palette: 'Teal'
        number: 60
        personality:
          - Awareness
          - Approchability
  accent-colors:
    instructions: Choose a primary and secondary color
    colors:
      - palette: 'Blue'
        number: 40
      - palette: 'Orange'
        number: 30
      - palette: 'Teal'
        number: 40
    - palette: 'Yellow'
        number: 30
  supporting-greys:
    instructions: Choose supporting greys and neutrals
    colors:
      - palette: 'Grey'
        number: 90
      - palette: 'Grey'
        number: 80
      - palette: 'Grey'
        number: 60
      - palette: 'Grey'
        number: 50
      - palette: 'Grey'
        number: 10
      - palette: 'Neutral'
        number: 4
      - palette: 'Neutral'
        number: 2
---

Color is a crucial component of our visual vernacular, helping to unify the look and feel of all communications. The [IBM Design Language](http://www.ibm.com/design/language/framework/visual/color.shtml) comprises a wide spectrum of colors; IBM Watson relies on a defined subset of those colors to establish its unique presence while respecting the broader IBM Design guidelines.

## Colors for Watson

The colors chosen for IBM Watson are flexible and distinguish Watson as a brand across all user experiences. The colors chosen for IBM Watson were developed using color psychology to support the Watson [brand attributes](brand-attributes.html), reinforce Watson's personality, and set the tone of each specific product.

{{> primary-color-display primary-colors}}

## Choosing A Color Palette

Choose a primary color, a secondary color, and an accent color. Additional tints and shades of the chosen palette can help to unify the design. These values can add variety to a palette without additional colors. Use the IBM Design Language for a wider variety of colors, values, and neutrals.

{{> color-picker primary-colors}}

{{> color-picker accent-colors}}

{{> color-picker supporting-greys}}

## Applying A Color Palette

Color is a powerful communication tool to determine hierarchy on a page. Use ample white space and neutrals to create balance and to direct users' attention.

{{> figure palette-application.light }}

{{> figure palette-application.dark }}