---
type: guideline
title: "Inform Interactions"
variables:
  detail:
    informOne:
      visualDisplay: /images/principles/inform-one.svg
      description: "Demonstrate Watson’s heavy lifting with visual metaphors and indications of the actions Watson takes."
      callouts:
        - title: "Primary Insights"
          description: These are modules that display primary insights.
        - title: "\"See other hypotheses\""
          description: "This is copy that displays below the primary content."
    informTwo:
      visualDisplay: /images/principles/inform-two.svg
      description: "Increase transparency when it helps the user trust the accuracy of the insights Watson returns."
      callouts:
        - title: "\"Watson is analyzing 115 out of 150 data sets\""
          description: "This is a module that explains what Watson is doing."
    informThree: 
      visualDisplay: /images/principles/inform-three.svg
      description: "Present insights early on, with an indication of accuracy or obscurity."
      callouts:
        - title: "\"This answer was chosen because...\""
          description: "This is copy that displays below each insight."
    informFour:
      visualDisplay: /images/principles/inform-four.svg
      description: "Display Watson's insights as the user needs them so that interfaces aren't cluttered or overwhelming."
      callouts:
        - title: "\"Show / Hide additional explanation\""
          description: "This is a button to show or hide additional explanation."
        - title: "Additional explanation"
          description: "This is a module that displays additional information."
---
**Reduce the complexity of using Watson by informing the user's interactions as they collaborate with Watson to accomplish desired tasks.**

{{ _detail.view(detail.informOne) }}

{{ _detail.view(detail.informTwo) }}

{{ _detail.view(detail.informThree) }}

{{ _detail.view(detail.informFour) }}
