---
type: guideline
title: "Introduce Cognitive"
variables:
  detail:
    introduceOne:
      visualDisplay: /images/principles/introduce-one.svg
      description: "Provide intelligent defaults and positive feedback to reinforce cognitive behaviors and gradually adjust the user’s habits."
      callouts:
        - title: "Based on the input data, this is a graph comparing REVENUE and TIME."
          description: "This describes the variables plotted on the graph."
        - title: "\"Choose a different variable to plot\""
          description: "This is copy that displays below a graph."
    introduceTwo:
      visualDisplay: /images/principles/introduce-two.svg
      description: "Clarify Watson's capabilities with hierarchy, copy, and interactions to help set appropriate user expectations."
      callouts:
        - title: "\"Remember that Chef Watson eats data, not real food. Use your own judgment when preparing these dishes.\""
          description: "This is copy that displays below the primary content."
    introduceThree:
      visualDisplay: /images/principles/introduce-three.svg
      description: "Educate the user throughout the experience without interrupting their workflow."
      callouts:
        - title: "\"You still need to complete an action to see results.\""
          description: "This is an empty module with copy that explains the user's next action."
    introduceFour:
      visualDisplay: /images/principles/introduce-four.svg
      description: "Integrate additional explanation into the hierarchy as a secondary focus so that it doesn’t get in the way of more experienced users."
      callouts:
        - title: "\"Did you know?...\""
          description: "This is copy that displays beside the primary content."
---
**Give first-time users a set of "cognitive training wheels" and continue to provide unobtrusive support as needed.**

{{ _detail.view(detail.introduceOne) }}

{{ _detail.view(detail.introduceTwo) }}

{{ _detail.view(detail.introduceThree) }}

{{ _detail.view(detail.introduceFour) }}
