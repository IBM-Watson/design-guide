---
type: guideline
title: "Offer Control"
variables:
  detail:
    offerOne:
      visualDisplay: /images/principles/offer-one.svg
      description: "Denote a clear best path through the experience, while accommodating alternatives and seamless undos."
      callouts:
        - title: "Primary Action"
          description: "This is a module in which the primary action occurs."
        - title: "Secondary Action"
          description: "This is a module in which the secondary action occurs."
        - title: "Alternative Action"
          description: "This is a module that displays alternative actions that are separate from the primary best path."
    offerTwo:
      visualDisplay: /images/principles/offer-two.svg
      description: "Support users with copy and visual design that indicate collaboration or a conversation."
      callouts:
        - title: "\"You want to accomplish ___________\""
          description: "This is copy that displays at the top of the page."
        - title: "\"Watson can do these actions to help you get there.\""
          description: "This is copy that displays below the primary content."
        - title: "Next steps for the user to choose from"
          description: "These are modules that display available actions."
    offerThree:
      visualDisplay: /images/principles/offer-three.svg
      description: "Provide manual personalization options that are performed by the user, such as feedback mechanisms for users to \"teach\" Watson."
      callouts:
        - title: "\"Teach Watson which filters are important to you\""
          description: "This is copy that displays above the filter modules."
    offerFour:
      visualDisplay: /images/principles/offer-four.svg
      description: "Provide automatic personalization options that are performed by Watson, such as gathering user information and preferences to apply to the experience."
      callouts:
        - title: "\"Recommendations based on saved queries\""
          description: "These are modules that display personalized recommendations."
---
**Let the user choose more help or less help by offering control when it is wanted. Watson experiences should naturally adapt to amplify the user's abilities and expertise.**

{{ _detail.view(detail.offerOne) }}

{{ _detail.view(detail.offerTwo) }}

{{ _detail.view(detail.offerThree) }}

{{ _detail.view(detail.offerFour) }}
