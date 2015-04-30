Watson Loader Animation
---

## What's here:

- SVG Animation
- Gif Animation
- Modernizr (SMIL & SVG)
- SCSS for Fallback class usage


## How to Implement

### 1. Copy Resources
Copy the two images `WatsonAvatar.svg` & `WatsonAvatar.gif` within the image folder. Also copy over the `modernizr.svg-smil.js` and `main.scss`

### 2. Modernizr

Import Modernizr to the base html.

```html
<script src="js/modernizr.svg-smil.js" type="text/javascript"></script> 
```

### SVG Animations
- SVG and Gif fallback animations are housed in the `img` folder

- All of the Animation is housed within the SVG file. There are 2 types of animation in the SVG file:
  - SMIL`- Animates the smaller elements like strokes and dots animating 
  - `CSS` - Animate the larger elements like scaling of the entire SVG
