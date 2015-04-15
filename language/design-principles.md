---
type: guideline
title: "Design Principles"
variables:
    detail:
        introduceOne:
            visualDisplay: images/visual/introduce-one.svg
            description: "Provide intelligent defaults and positive feedback to reinforce cognitive behaviors and gradually adjust the user’s habits."
            callout:
                - title: "Based on the input data, this is a graph comparing REVENUE and TIME."
                  description: "This describes the variables plotted on the graph."
                - title: "\"Choose a different variable to plot\""
                  description: "This is copy that displays below a graph."
        introduceTwo:
            visualDisplay: images/visual/introduce-two.svg
            description: "Clarify Watson's capabilities with hierarchy, copy, and interactions to help set appropriate user expectations."
            callout:
                - title: "\"Remember that Chef Watson eats data, not real food. Use your own judgment when preparing these dishes.\""
                  description: "This is copy that displays below the primary content."
        introduceThree:
            visualDisplay: images/visual/introduce-three.svg
            description: "Educate the user throughout the experience without interrupting their workflow."
            callout:
                - title: "\"You still need to complete an action to see results.\""
                  description: "This is an empty module with copy that explains the user's next action."
        introduceFour:
            visualDisplay: images/visual/introduce-four.svg
            description: "Integrate additional explanation into the visual hierarchy as a secondary focus so that it doesn’t get in the way of more experienced users."
            callout:
                - title: "\"Did you know?...\""
                  description: "This is copy that displays beside the primary content."
        informOne:
            visualDisplay: images/visual/inform-one.svg
            description: "Demonstrate Watson’s heavy lifting with visual metaphors and indications of the actions Watson takes."
            callout:
                - title: "Primary Insights"
                  description: These are modules that display primary insights.
                - title: "\"See other hypotheses\""
                  description: "This is copy that displays below the primary content."
        informTwo:
            visualDisplay: images/visual/inform-two.svg
            description: "Increase transparency when it helps the user trust the accuracy of the insights Watson returns."
            callout:
                - title: "\"Watson is analyzing 115 out of 150 data sets\""
                  description: "This is a module that explains what Watson is doing."
        informThree: 
            visualDisplay: images/visual/inform-three.svg
            description: "Present insights early on, with an indication of accuracy or obscurity."
            callout:
                - title: "\"This answer was chosen because...\""
                  description: "This is copy that displays below each insight."
        informFour:
            visualDisplay: images/visual/inform-four.svg
            description: "Display Watson's insights as the user needs them, so that interfaces aren't cluttered or overwhelming."
            callout:
                - title: "\"Show / Hide additional explanation\""
                  description: "This is a button to show or hide additional explanation."
                - title: "Additional explanation"
                  description: "This is a module that displays additional information."
        offerOne:
            visualDisplay: images/visual/offer-one.svg
            description: "Denote a clear best path through the experience, while accommodating alternatives and seamless undos."
            callout:
                - title: "Primary Action"
                  description: "This is a module in which the primary action occurs."
                - title: "Secondary Action"
                  description: "This is a module in which the secondary action occurs."
                - title: "Alternative Action"
                  description: "This is a module that displays alternative actions that are separate from the primary best path."
        offerTwo:
            visualDisplay: images/visual/offer-two.svg
            description: "Support users with copy and visual design that indicate collaboration or a conversation."
            callout:
                - title: "\"You want to accomplish ___________\""
                  description: "This is copy that displays at the top of the page."
                - title: "\"Watson can do these actions to help you get there.\""
                  description: "This is copy that displays below the primary content."
                - title: "Next steps for the user to choose from"
                  description: "These are modules that display available actions."
        offerThree:
            visualDisplay: images/visual/offer-three.svg
            description: "Provide manual personalization options that are performed by the user, such as feedback mechanisms for users to \"teach\" Watson."
            callout:
                - title: "\"Teach Watson which filters are important to you\""
                  description: "This is copy that displays above the filter modules."
        offerFour:
            visualDisplay: images/visual/offer-four.svg
            description: "Provide automatic personalization options that are performed by Watson, such as gathering user information and preferences to apply to the experience."
            callout:
                - title: "\"Recommendations based on saved queries\""
                  description: "These are modules that display personalized recommendations."
---

Watson design principles are actionable guidelines that inform the design and development of cognitive software products, in order to provide consistently excellent experiences for users. They are meant to be applied in conjunction with the IBM Design Language best practices and principles. These design principles are explicitly related to Watson, but some principles may not apply to every use case.

##Introduce Cognitive

**Give first-time users a set of "cognitive training wheels" and continue to provide unobtrusive support as needed.**

{{> SOME-FUNCTION-HERE display detail.introduceOne}}
{{> SOME-FUNCTION-HERE display detail.introduceTwo}}
{{> SOME-FUNCTION-HERE display detail.introduceThree}}
{{> SOME-FUNCTION-HERE display detail.introduceFour}}

##Inform Interactions

**Reduce the complexity of using Watson by informing the user's interactions as they collaborate with Watson to accomplish desired tasks.**

{{> SOME-FUNCTION-HERE display detail.informOne}}
{{> SOME-FUNCTION-HERE display detail.informTwo}}
{{> SOME-FUNCTION-HERE display detail.informThree}}
{{> SOME-FUNCTION-HERE display detail.informFour}}

##Offer Control

**Let the user choose more help or less help by offering control when it is wanted. Watson experiences should naturally adapt to amplify the user's abilities and expertise.**

{{> SOME-FUNCTION-HERE display detail.offerOne}}
{{> SOME-FUNCTION-HERE display detail.offerTwo}}
{{> SOME-FUNCTION-HERE display detail.offerThree}}
{{> SOME-FUNCTION-HERE display detail.offerFour}}
