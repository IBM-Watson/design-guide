---
type: documentation
title: Animation
variables:
  example:
    firstCompare:
      exampleOne: 
        title: "Single Property Animation Visual Example"
        visualDisplay: /videos/animation-docs/singlePropAni.webm
    secondCompare:
      exampleOne: 
        title: "Option One Visual Example"
        visualDisplay: /videos/animation-docs/multiPropAni1.webm
        description: "Start one property alone, then animate any additional properties."
    thirdCompare:    
      exampleOne: 
        title: "Option Two Visual Example"
        visualDisplay: /videos/animation-docs/multiPropAni2.webm
        description: "Both properties start at the same time, then one property ends before the other."
    fourthCompare:
      exampleOne: 
        title: "Singular Animation Visual Example"
        visualDisplay: /videos/animation-docs/multiPropAni1.webm
    fifthCompare:
      exampleOne: 
        title: "Sequence of Animations Visual Example"
        visualDisplay: /videos/animation-docs/sequenceAni.webm
resources:
  links:
  - name: "Debugging Chrome Animations"
    source: http://valhead.com/2015/01/06/quick-tip-chrome-animation-controls/
---
The overarching metaphor for our animation comes from the IBM Design Language metaphor *elegant machine motion*. Elegant machine motion consists of very quick movements with strong easing at the beginning and/or end of the animation, plus subtle offsets.

## Properties

Properties are the elements of an object that will change over time. The properties that can animate within CSS are listed below. We recommend using the most performant properties first. If the desired effect cannot be achieved, use the general list of properties as a fallback.

**Most Performant Properties**

* Position: `transform: translate(npx,npx);`
* Scale: `transform: scale(n);`
* Rotation: `transform: rotate(ndeg);`
* Opacity: `opacity: 0...1;`

For more information about why these properties are performant, see [this blog post.](http://www.html5rocks.com/en/tutorials/speed/high-performance-animations/)

To see a full list of animatable properties and examples of them animating, visit [Animatable.](http://leaverou.github.io/animatable/)


### Single Property Animations

When animating only a single property, follow the guidelines below. 

{{ _example.compare(example.firstCompare) }}

```scss
//box class
.single-attribute {
  animation: single-attribute 1s map-get($timing-functions, snap-in);
}

//keyframes for animation
@keyframes single-attribute {
  0% {
    transform: scale(0);
  }
  100% {
    transform: scale(1);
  }
}
``` 

**Timing Functions**

Use snap-in eases to add very strong eases to quick movements. This enhances the metaphor of elegant machine motion.

  * Use of Timing Functions:
    * **Entrances** - `map-get($timing-functions, snap-in)` (Fast to Slow) 
    * **Exits** - `map-get($timing-functions, snap-out)` (Slow to Fast)
    * **Interactive Elements** - `map-get($timing-functions, snap-in-out)`

### Multiple Property Animations

When more than one property is being animated, the animation is known as a multiple property animation. With multiple property animations, there are two different options: to start one property alone then animate any additional properties, or to start both properties at the same time then have one property end before the other. We recommend not starting and stopping multiple properties at the same time; choose one option or the other.

{{ _example.compare(example.secondCompare) }}

```scss
//box class
.animation-a {
  animation: animation-a 1s map-get($timing-functions, snap-in);
  transform-origin: 0% 100%;
}

//keyframes for animation
@keyframes animation-a {
  0% {
    transform: scale(0 , 0);
  }
  50% {
    transform: scale(.5 , 0);
  }
  100% {
    transform: scale(1 , 1);
  }
}
```

{{ _example.compare(example.thirdCompare) }}

```scss
//box class
.animation-b {
  animation: animation-b 1s map-get($timing-functions, snap-in);
  transform-origin: 0% 100%;
}

//keyframes for animation
@keyframes animation-b {
  0% {
    transform: scale(0 , 0);
  }
  30% {
    transform: scale(.2 , 0);
  }
  80% {
    transform: scaleY(.5);
  }
  100% {
    transform: scale(1 , 1);
  }
}
```

**Timing Functions**

Use snap-in eases to add very strong eases to quick movements. This enhances the metaphor of elegant machine motion.

* Use of Timing Functions: 
  * **Entrances** - `map-get($timing-functions, snap-in)` (Fast to Slow) 
  * **Exits** - `map-get($timing-functions, snap-out)` (Slow to Fast)
  * **Interactive Elements** - `map-get($timing-functions, snap-in-out)`


## Singular versus Sequence of Actions

Within user interfaces, there are instances where only one element moves, as well as instances when multiple elements create a sequence of actions.


### Singular Action

A singular action animation occurs when only one element on the screen is animated and there are no other complementary elements.

{{ _example.compare(example.fourthCompare) }}

### Sequence of Actions

A sequence of actions animation occurs when there are multiple animated elements. This is typically a primary action followed by a secondary action that complements the primary.

{{ _example.compare(example.fifthCompare) }}

In the example above, the text animations and delay enhance the animation by following the lead of the primary action, which in this case is the scaling of the box.

#### Things to Consider with Sequence of Actions

  * Choreography: elements should coordinate within the determined hierarchy.
  * Delays: delays need to be consistent and should have the same rate across similar content.

## Animation Library Implementation

All of the animations live within an animation map. It looks a bit like this:

```scss 
$animations: (
  'fade-in': (
    0%: (
      opacity: 0
    ),
    100%: (
      opacity: 1
    )
  ),
  'slide-in--left' : (
    0%: (
      transform: translateY(-100%)
    ),
    100%: (
      transform: translateY(0)
    )
  ),
  'slide-in--right' : (
    0%: (
      transform: translateY(100%)
    ),
    100%: (
      transform: translateY(0)
    )
  )
);
```

This is the format of the map, and everything between <> is a string:

```scss
$animations: (
  '<animation name>': (
    <keyframe%>: (
      <property>: <value>;
    ),
    <keyframe%>: (
      <property>: <value>;
    )
  )
);
```

In order to use any of these animations in a product, we have implemented an animate Sass mixin. To include animation with an element, use the following syntax: `@include animation($animation-name [, $duration, $timing-function])`. We have included defaults for the `$duration` (2s) and `$timing-function` (ease-in), in case you do not specify your own.

For example, you can implement `@include animate('fade-in');` or `@include animate(fade-in, 3s, snap-in);`.

We currently provide these animations:

Entrance Animations
- `fade-in`
- `fade-in--up`
- `fade-in--down`
- `fade-in--left`
- `fade-in--right`
- `slide-in--up`
- `slide-in--down`
- `slide-in--left`
- `slide-in--right`

Exit Animations
- `fade-out`
- `fade-out--up`
- `fade-out--down`
- `fade-out--left`
- `fade-out--right`
- `slide-out--up`
- `slide-out--down`
- `slide-out--left`
- `slide-out--right`

### Timing Functions

A timing function is a mathematical equation that creates a bezier curve, which is a line that defines the acceleration pattern on a graph. Bezier curves are often translated to keywords like ease-in, ease-out, and ease-in-out. They are also referred to as “Motion Curves” or “Curves."

We currently provide these timing functions:

- `ease-in`
- `ease-out`
- `bounce-out`
- `bounce-in`
- `bounce-in-out`
- `snap-in`
- `snap-out`
- `snap-in-out`
