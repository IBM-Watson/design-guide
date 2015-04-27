---
type: documentation
title: Animation
resources:
  links:
    name: "Debugging Chrome Animations"
    source: http://valhead.com/2015/01/06/quick-tip-chrome-animation-controls/
---


## Animation Guidelines

The metaphor for animation comes from the IBM Design Language metaphor *elegant machine motion*. Elegant machine motion consists of very quick movements with strong easing at the beginning and/or end of the animation with subtle offsets.


## Properties

Properties are the elements of an object that will change over time. Below are the properties you can animate within CSS. It is recommended to use the most performant properties first. If the effect cannot be achieved, use the general list of properties as a fall back if the effect cannot be achieved using those.

**Most Performant Properties**

* Position: `transform: translate(npx,npx);`
* Scale: `transform: scale(n);`
* Rotation: `transform: rotate(ndeg);`
* Opacity: `opacity: 0...1;`

More Information about why these are performant see [this blog post.](http://www.html5rocks.com/en/tutorials/speed/high-performance-animations/)

General list of the other properties you can animate:
- `background-color`
- `border-width`
- `clip`
- `font-size`
- `left`
- `margin`
- `min-height`
- `outline-color`
- `padding`
- `text-shadow`
- `visibility`
- `z-index`
- `background-position`
- `border-spacing`
- `color`
- `font-weight`
- `letter-spacing`
- `max-height`
- `min-width`
- `outline-offset`
- `right`
- `top`
- `width`
- `border-color`
- `bottom`
- `crop`
- `height`
- `line-height`
- `max-width`
- `opacity`
- `outline-width`
- `text-indent`
- `vertical-align`
- `word-spacing`

Great example of all the different properties that can be animated [here.](http://leaverou.github.io/animatable/)


### Single Property Animations

When animating only a single property one should follow the guidelines below. 

![Scaling of a box from 0% to 100%](images/motion/examples/Single_Attribute-1.gif)

```scss
//box class
.single-attribute {
  animation: single-attribute 1s $bounce-in;
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

**Timing Function**

* Adding a bounce timing function add a snap in factor to the interface that is lost if you don’t animate two properties.
  * Use of Timing Function:
    * Entrances = `$bounce-in` (Fast to Slow) 
    * Exits = `$bounce-out` (Slow to Fast)
    * Interactive Elements = `$bounce-in-out`

### Multiple Property Animations

Mutliple property animations are animations where multiple properties are being animated together. With multiple property animations there are two diretions on can take. Direction 1 - Start one property alone then animate the additional properties. Direction 2 - Both Properties start at the same time then one property ends before the other. It is recommneded to not start and stop multiple properties at the same time. Please choose one or the other.

**Direction 1**

Start one property alone then animate the additional properties.

![Scaling box animation starting with X axis scale then the Y axis scale follows.](images/motion/examples/Option-A.gif)

```scss
//box class
.animation-a {
  animation: animation-a 1s $snap-in;
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

**Direction 2**

Both Properties start at the same time then one property ends before the other.


![Scaling box animation starting with both X and Y axis scale then X axis ends before Y finishes.](images/motion/examples/Option-B.gif)

```scss
//box class
.animation-b {
  animation: animation-b 1s $snap-in;
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

**Easing Curves**
* Use of Easing Curves: 
  * Entrances = `$snap-in` (Fast to Slow) 
  * Exits = `$snap-out` (Slow to Fast)
  * Interactive Elements = `$snap-in-out`


## Singular vs. Sequence of Actions

Within UI there are instances where only one element of the UI moves and there are instances where multiple elements move. There are different treatments for both of these cases. Below are the guidelines for those instances.


### Singular Action

A singluar action animation is when you animate only one element on the screen.

![Singular action shows a box animating scaling horizontally then vertically](images/motion/examples/Option-B.gif)

### Sequence of Actions

A sequence of actions animation is where you have multiple elements typically a primary action then a secondary action which complements the primary.

![Secondary action shows a box animating scaling horizontally then vertically with text animating up following the hertical scale](images/motion/examples/secondary-action.gif)

In the example above, the text animations and delay enhance by following the lead of the primary action (scaling of the box).

#### Things to consider with Sequence of Actions

 * Choreography: - Elements should have coordinate within hierarchy.

### Delays

Delays need to be consistent - needs to have the same rate across similar content types.

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

The format of the map is (with everything between <> being a string:

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

In order to use any of these animations in your product, we've implemented an animate Sass mixin. All you need to do is include the animation on the element. You do this with the following syntax: `@include animate(<animation name>, <duration>, <timing function>)`. If you do not specify the duration and timing function, we have included the default values of 2s and ease-in.

For example, you can implement `@include animate('fade-in');` or `@include animate(fade-in, 3s, snap-in);`.

The current animations provided are:

Entrance Animations
- fade-in
- fade-in--up
- fade-in--down
- fade-in--left
- fade-in--right
- slide-in--up
- slide-in--down
- slide-in--left
- slide-in--right

Exit Animations
- fade-out
- fade-out--up
- fade-out--down
- fade-out--left
- fade-out--right
- slide-out--up
- slide-out--down
- slide-out--left
- slide-out--right

### Timing Functions

The current timing functions provided are:

- ease-in
- ease-out
- bounce-out
- bounce-in
- bounce-in-out
- snap-in
- snap-out
- snap-in-out

Timing functions are mathematical equations that creates a bezier curve which is: a line that defines the acceleration pattern on a graph. Bezier curves are often translated to keywords like: ease-in, ease-out, and ease-in-out. They are also referred to as “Motion Curves” or “Curves”.

