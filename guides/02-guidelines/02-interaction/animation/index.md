---
type: guideline
title: Animation
variables:
  examples:
    animationBefore:
      title: "Before"
      visualDisplay: /videos/animation/example-animation-1.webm
      description: "Interfaces without animations often produce a choppy, disorienting, and confusing experience for the user."
    animationAfter:
      title: "After"
      visualDisplay: /videos/animation/example-animation-2.webm
      description: "Interfaces with animations provide orientation and guidance for the user and make for a more pleasant experience."
---

Motion is a fundamental element of user experience design because it demonstrates the emotional quality and vitality of the product. It gives non-verbal communication to the user and is the body language of a product. Within software, motion is conveyed through the process of animation—"the illusion of movement through a sequence of images."

{{ _example.compare(examples) }}

Motion design enhances communication throughout the design process, from the rapid prototyping of scenarios and interfaces to delivering final coded interface animations. The metaphor for animation comes from the IBM Design Language metaphor of elegant machine motion. The IBM Design Language [*Motion* section](http://www.ibm.com/design/language/framework/interaction/motion.shtml) walks through the methodologies and process for creating animation for IBM software products.


## Animation Library

The animations within this library are a collection of entrance and exit animations for page transitions that can be utilized within our interfaces. The animation library was built using CSS keyframe animations and can be implemented by using a Sass mixin. To view more about how to use this library, read the [documentation](/ui-patterns/documentation/animation), and please feel free to contribute additional animations.
