---
type: guideline
title: Wordmark and Logo
resources:
  files:
    name: "Wordmark and Logo SVG"
    source: /images/wordmark/watson_wordmark.zip
variables:
  example:
    wordmark:
      title: Wordmark
      visualDisplay: /images/wordmark/wordmark.svg
    logo:
      title: Logo
      visualDisplay: /images/wordmark/logo.svg
    wordmarkSpacing:
      title: Wordmark
      visualDisplay: /images/wordmark/wordmark-spacing.svg
    wordmarkColor:
      light:
        title: Wordmark
        visualDisplay: /images/wordmark/wordmark-color-pos.svg
      dark:
        visualDisplay: /images/wordmark/wordmark-color-neg.svg
    logoColor:
      light:
        title: Logo
        visualDisplay: /images/wordmark/logo-color-pos.svg
      dark:
        visualDisplay: /images/wordmark/logo-color-neg.svg
    incorrectUsage:
      reconfigure:
        title: "Do not reconfigure"
        visualDisplay: /images/wordmark/wrong-configuration.svg
        sentiment: negative
      distort:
        title: "Do not distort"
        visualDisplay: /images/wordmark/wrong-distortion.svg
        sentiment: negative
      color:
        title: "Do not combine colors"
        visualDisplay: /images/wordmark/wrong-color-combination.svg
        sentiment: negative
      font:
        title: "Do not change the font"
        visualDisplay: /images/wordmark/wrong-font.svg
        sentiment: negative
---

The IBM Watson wordmark and logo represents our brand and should be managed carefully. It is typeset in a combination of Helvetica Neue Light and Helvetica Neue Bold to align with [IBM standards](http://www.ibm.com/design/language/framework/visual/typography.shtml). When possible, it should be used in all internal and external communications that focus on the IBM Watson brand.

{{ _example.compare(wordmark) }}

{{ _example.compare(logo) }}

## Specifications

### Spacing considerations

It is important to include adequate spacing around these elements to avoid visual clutter. Keep the area around the IBM Watson wordmark separated from other visual elements by a distance approximately equal to the height of the IBM Watson wordmark. This distance is considered the minimum uninterrupted space surrounding the mark.

{{ _example.small(wordmarkSpacing) }}

### Color Usage

The wordmark and logo for IBM Watson should only appear in the approved color combinations. Any one of the [three primary colors](color.html) for IBM Watson may be used in combination with black or white for use on light or dark backgrounds, respectively. For dark color palettes, use lighter values of the IBM Watson primary colors.

{{ _example.compare(wordmarkColor.light) }}

{{ _example.compare(wordmarkColor.dark) }}

{{ _example.compare(logoColor.light) }}

{{ _example.compare(logoColor.logoColor.dark) }}

### Incorrect Usage

Never distort or reconfigure the wordmark or logo. Do not attempt to create the wordmark yourself, change the font, or alter the size or proportions.

{{ _example.compare(incorrectUsage.reconfigure) }}

{{ _example.compare(incorrectUsage.incorrectUsage.distort) }}

{{ _example.compare(incorrectUsage.incorrectUsage.color) }}

{{ _example.compare(incorrectUsage.incorrectUsage.font) }}

## Logo versus Avatar

The logo for IBM Watson serves as the visual representation of the brand. The logo may be used as a static element as it pertains to products. The IBM Watson avatar is recommended in situations when Watson is interacting with, aiding, or responding to a user.

{{> SomeFunctionHere resources}}
