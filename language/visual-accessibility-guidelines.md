---
type: guideline
title: Accessibility
resources:
  links:
    - name: IBM Design Language
      source: http://www.ibm.com/design/language/framework/visual/color.shtml#contrast
    - name: Color Contrast Analyzer
      source: http://www.paciellogroup.com/resources/contrastanalyser/
    - name: Color Ratio Analyzer
      source: http://leaverou.github.io/contrast-ratio/
    - name: WCAG 2.0 AA requirements
      source: http://www.w3.org/TR/WCAG20/
---

# Accessibility
When choosing colors and contrast ratios for typography it is important to adhere to the [IBM Design Language recommendations for accessibility](http://www.ibm.com/design/language/framework/visual/color.shtml#contrast), as we must meet [WCAG 2.0 AA requirements](http://www.w3.org/TR/WCAG20/). High color contrast helps users who are partially or completely color blind see differences between certain colors. It creates a strong visual hierarchy and improved usability for everyone. Never rely on color as the only visual means of conveying information, indicating an action, prompting a response, or distinguishing a visual element.  

![Accessibile Log In Page](images/visual/color-applying-light.svg)

##### Distinguishing visual elements
1. Help users to easily identify form elements by using iconography.
2. Help users to distinguish links by using combinations of colors and underlines.

### Resources: 
[IBM Design Language](http://www.ibm.com/design/language/framework/visual/color.shtml#contrast)
[Color Contrast Analyzer](http://www.paciellogroup.com/resources/contrastanalyser/)
[Contrast Ratio Analyzer](http://leaverou.github.io/contrast-ratio/)
[WCAG 2.0 AA requirements](http://www.w3.org/TR/WCAG20/)

## Animation
In addition to the fundamental visual accessibility guides, animation has its own set of considerations. For animations that are longer than five seconds, we must provide the ability to pause, stop, or hide animations for users who can be severely distracted, particularly those with attention deficit disorders.

The five-second limit is long enough to get a user’s attention, but short enough for a user to wait out the distraction before reading the page. (2.2b) Do not include anything that flashes, or can be considered a flash, more than twice per second; it can negatively affect those prone to seizures. (2.3a) If the animation has audio longer than three seconds, provide audio control for users that have screen reading software, as it will make it easier for them to understand their screen reader. (1.4b)