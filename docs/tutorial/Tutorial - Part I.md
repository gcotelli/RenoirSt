Tutorial - Part I
=================

## Introduction

This tutorial asumes some knowledge of CSS and Pharo Smalltalk.

The main entry point for the library is the class `CascadingStyleSheetBuilder`. Let's see some minimalist example. Copy the following in a workspace and `Inspect-it (Alt+i)`:

```smalltalk
CascadingStyleSheetBuilder new build
```

Beautiful! You have now an inspector on your fisrt (empty and useless) style sheet. Let's do something more useful now. Real stylesheets are composed of rules (or rule-sets), where each has a selector and a declaration group. The selector determines if the rule applies to some element in the DOM, and the declaration group specifies the style to apply.

## Basics

Our first style sheet will simply assign a margin to every `div` element in the DOM.

```smalltalk
CascadingStyleSheetBuilder new 
  declareRuleSetFor: [:selector | selector div ]
  with: [:style | style margin: 2 px ];
  build
```
Evaluates to:
```css
div
{
  margin: 2px;
}
```
Let's analyze it. The message `declareRuleSetFor:with:` is used to configure a rule-set in the builder. It uses two closures, the first one is used to define the *selector* and the second one the *style*. The `selector` argument of the first closure provides an API to construct the selector (more on this later). The `style` argument on the second closure provides the API to declare CSS properties with their corresponding values.

The properties API is mostly defined following these rules:
- Properties without dashes in the name are directly mapped: to define `margin` we use the message `margin:`.
- Properties with one or more dashes are mapped using camel case: to define `margin-top` we use the message `marginTop:`.

### Basic CSS Types

#### Lengths, Angles, Times and Frequencies

Another thing to note is how `2 px` was interpreted. The resulting object is a `CssMeasure`. The library provides out-of-the-box support for the length, angle, time and frequency units in the CSS spec. There are extensions for `Integer` and `Float` classes allowing to obtain lengths. The supported length units are: 
- `em` relative to font size
- `ex` relative to "x" height
- `ch` relative to width of the zero glyph in the element's font
- `rem` relative to font size of root element
- `vw` 1% of viewport's width
- `vh` 1% of viewport's height
- `vmin` 1% of viewport's smaller dimension
- `vmax` 1% of viewport's larger dimension
- `cm` centimeters
- `mm` millimeteres
- `in` inches
- `pc` picas
- `pt` points 
- `px` pixels (note that CSS has some special definition for pixel)

The supported angle units are:
- `deg` degrees
- `grad` gradians
- `rad` radians
- `turn` turns

The supported time units are:
- `s` seconds
- `ms` milliseconds

The supported frequency units are:
- `Hz` Hertz
- `kHz` KiloHertz

It also supports the creation of percentages: `50 percent` is expressed as `50%` in the resulting CSS.

Some properties require integer or floating point values. In this cases just use the Pharo provided integer and float support. For example: 
```smalltalk
CascadingStyleSheetBuilder new 
  declareRuleSetFor: [:selector | selector div ]
  with: [:style | style zIndex: 2 ];
  build
```

#### Colors

The library also supports abstractions for properties requiring color values. The shared pool `CssSVGColors` provides easy access to colors in the SVG 1.0 list, and the abstractions `CssRGBColor` and `CssHSLColor` allow the creation of colors in the RGB or HSL space including alpha support.

```smalltalk
CascadingStyleSheetBuilder new 
  declareRuleSetFor: [:selector | selector div ]
  with: [:style | 
    style 
      backgroundColor: CssSVGColors aliceBlue;
      borderColor: (CssRGBColor red: 0 green: 128 blue: 0 alpha: 0.5)];
  build
```

Evaluates to:
```css
div
{
	background-color: aliceblue;
	border-color: rgba(0,128,0,0.5);
}
```
> **Hint:** In a real scenario you should never hardcode the colors as in the examples, instead put them in objects representing a theme or something that gives them a name related to your application.

RGB-Colors also support percentual values:

```smalltalk
CascadingStyleSheetBuilder new 
  declareRuleSetFor: [:selector | selector div ]
  with: [:style | style borderColor: (CssRGBColor red: 0 percent green: 50 percent blue: 0 percent) ];
  build
```
Evaluates to:
```css
div
{
	border-color: rgb(0%,50%,0%);
}
```
Notice the difference in the message used because there is no alpha channel specification.

#### Constants

A lot of values for CSS properties are just keyword constants. This support is provided by the classes `CssConstants` and `CssFontConstants`.

```smalltalk
CascadingStyleSheetBuilder new 
  declareRuleSetFor: [:selector | selector div ]
  with: [:style | style textAlign: CssConstants justify ];
  build
```
Evaluates to:
```css
div
{
	text-align: justify;
}
```

#### Several Property Values

Some properties support a wide range of values. For example the `margin` property can have 1, 2 , 3 or 4 values specified. If only one value needs to be specified just provide it, in other case use an `Array` like this:

```smalltalk
CascadingStyleSheetBuilder new 
  declareRuleSetFor: [:selector | selector div ]
  with: [:style | style margin: { 2 px. 4 px } ];
  build
```
Evaluates to:
```css
div
{
	margin: 2px 4px;
}
```
#### URLs

`ZnUrl` instances can be used as the value for properties requiring an URI. Both relative and absolute URLs are accepted. A relative URL is by default considered relative to the site root.

```smalltalk
CascadingStyleSheetBuilder new 
  declareRuleSetFor: [:selector | selector div class: 'logo' ]
  with: [:style | style backgroundImage: 'images/logo.png' asZnUrl ];
  declareRuleSetFor: [:selector | selector div class: 'logo' ]
  with: [:style | style backgroundImage: 'http://www.example.com/images/logo.png' asZnUrl ];
  build
```
Evaluates to:
```css
div.logo
{
	background-image: url("/images/logo.png");
}

div.logo
{
	background-image: url("http://www.example.com/images/logo.png");
}
```

In case you want an URL relative to the style sheet, you must send the message `relativeToStyleSheet`:

```smalltalk
CascadingStyleSheetBuilder new 
  declareRuleSetFor: [:selector | selector div class: 'logo' ]
  with: [:style | style backgroundImage: 'images/logo.png' asZnUrl relativeToStyleSheet];
  build
```
Evaluates to: 
```css
div.logo
{
	background-image: url("images/logo.png");
}
```

### Comments

When declaring rule sets the library support attaching comments to them. To do that send the message `declareRuleSetFor:with:andComment:`, for example:

```smalltalk
CascadingStyleSheetBuilder new 
  declareRuleSetFor: [:selector | selector div ]
  with: [:style | style margin: 2 pc ]
  andComment: 'Two picas margin';
  build
```
Evaluates to:
```css
/*Two picas margin*/
div
{
	margin: 2pc;
}
```

Since version 1.3.0 is possible to also define stand-alone comments (not attached to any rule):

```smalltalk
CascadingStyleSheetBuilder new 
  comment: 'A general comment';
  build
```
Evaluates to:
```css
/*A general comment*/
```

### Functional Notation

A functional notation is a type of CSS component value that can represent more complex types or invoke special processing. The following notations are supported:

#### Mathematical Expressions: `calc()`

The library provides support for math expressions using the  `CssMathExpression` abstraction. This math expressions are built instantiating a `CssMathExpression` with the first operand, and sending to it `+`, `-`, `*` or `/` messages. Lets see some example:
```smalltalk
CascadingStyleSheetBuilder new 
  declareRuleSetFor: [:selector | selector div ]
  with: [:style | style margin: (CssMathExpression on: 2 pc) / 3 + 2 percent ];
  build
```
Evaluates to:
```css
div
{
	margin: calc(2pc / 3 + 2%);
}
```

#### Toggling between values: `toggle()`

This kind of expressions allows descendant elements to cycle over a list of values instead of inheriting the same value. It's supported using the `CssToggle` abstraction. 

```smalltalk
CascadingStyleSheetBuilder new 
  declareRuleSetFor: [:selector | selector unorderedList unorderedList ]
  with: [:style | style listStyleType: (CssToggle cyclingOver: { CssConstants disc. CssConstants circle. CssConstants square}) ];
  build
```
Evaluates to:
```css
ul ul
{
	list-style-type: toggle(disc, circle, square);
}
```

#### Attribute references: `attr()`

The attr() function is allowed as a component value in properties applied to an element or pseudo-element. It returns the value of an attribute on the element. If used on a pseudo-element, it returns the value of the attribute on the pseudo-element's originating element. It's supported using the `CssAttributeReference` abstraction. This function can be used simply providing an attribute name:

```smalltalk
CascadingStyleSheetBuilder new 
  declareRuleSetFor: [:selector | selector div before ]
  with: [:style | style content: (CssAttributeReference toAttributeNamed: 'title') ];
  build
```
Evaluates to:
```css
div::before
{
	content: attr(title string);
}
```
or providing also the type or unit of the attribute (if no type or unit is specified the `string` type is assumed):

```smalltalk
CascadingStyleSheetBuilder new 
  declareRuleSetFor: [:selector | selector div  ]
  with: [:style | style width: (CssAttributeReference toAttributeNamed: 'height' ofType: CssLengthUnits pixel) ];
  build
```
Evaluates to:
```css
div
{
	width: attr(height px);
}
```

also it's possible to provide a fallback value in case the attribute is not present:

```smalltalk
CascadingStyleSheetBuilder new 
  declareRuleSetFor: [:selector | selector div before ]
  with: [:style | style content: (CssAttributeReference toStringAttributeNamed: 'title' withFallback: 'Missing title') ];
  build
```
Evaluates to:
```css
div::before
{
	content: attr(title string, "Missing title");
}
```

```smalltalk
CascadingStyleSheetBuilder new 
  declareRuleSetFor: [:selector | selector div before ]
  with: [:style | style content: (CssAttributeReference toAttributeNamed: 'height' ofType: CssLengthUnits pixel withFallback: 10 px) ];
  build
```
Evaluates to:
```css
div::before
{
	content: attr(height px, 10px);
}
```

#### Gradients: `linear-gradient()` `radial-gradient()` `repeating-linear-gradient()` `repeating-radial-gradient()`

A gradient is an image that smoothly fades from one color to another. These are commonly used for subtle shading in background images, buttons, and many other things. The gradient notations described in this section allow an author to specify such an image in a terse syntax, so that the UA can generate the image automatically when rendering the page. This notation is supported using `CssLinearGradient` and `CssRadialGradient` asbtractions. 

Let's see some examples for linear gradients:

```smalltalk
CascadingStyleSheetBuilder new 
  declareRuleSetFor: [:selector | selector div ]
  with: [:style | style background: (CssLinearGradient fading: { CssSVGColors yellow. CssSVGColors blue }) ];
  declareRuleSetFor: [:selector | selector div ]
  with: [:style | style background: (CssLinearGradient to: CssConstants bottom fading: { CssSVGColors yellow. CssSVGColors blue }) ];
  declareRuleSetFor: [:selector | selector div ]
  with: [:style | style background: (CssLinearGradient rotated: 45 deg fading: { CssSVGColors yellow. CssSVGColors blue }) ];
  declareRuleSetFor: [:selector | selector div ]
  with: [:style | style background: (CssLinearGradient rotated: 90 deg fading: { CssSVGColors yellow. (CssColorStop for: CssSVGColors blue at: 30 percent) }) ];
  declareRuleSetFor: [:selector | selector div ]
  with: [:style | style background: (CssLinearGradient fading: { CssSVGColors yellow. (CssColorStop for: CssSVGColors blue at: 20 percent). CssSVGColors green}) ];
  declareRuleSetFor: [:selector | selector div ]
  with: [:style | style background: (CssLinearGradient to: { CssConstants top. CssConstants right } fading: { CssSVGColors red.  CssSVGColors white. CssSVGColors blue }) ];
  build
```

evaluates to: 

```css
div
{
	background: linear-gradient(yellow, blue);
}

div
{
	background: linear-gradient(to bottom, yellow, blue);
}

div
{
	background: linear-gradient(45deg, yellow, blue);
}

div
{
	background: linear-gradient(90deg, yellow, blue 30%);
}

div
{
	background: linear-gradient(yellow, blue 20%, green);
}

div
{
	background: linear-gradient(to top right, red, white, blue);
}
```

and some for radial gradients:
```smalltalk
CascadingStyleSheetBuilder new 
  declareRuleSetFor: [:selector | selector div ]
  with: [:style | style background: (CssRadialGradient fading: { CssSVGColors yellow. CssSVGColors green }) ];
  declareRuleSetFor: [:selector | selector div ]
  with: [:style | style background: (CssRadialGradient elliptical: CssConstants farthestCorner at: CssConstants center fading: { CssSVGColors yellow. CssSVGColors green }) ];
  declareRuleSetFor: [:selector | selector div ]
  with: [:style | style background: (CssRadialGradient elliptical: CssConstants farthestSide at: { CssConstants left. CssConstants bottom} fading: { CssSVGColors red. (CssColorStop for: CssSVGColors yellow at: 50 px). CssSVGColors green }) ];
  declareRuleSetFor: [:selector | selector div ]
  with: [:style | style background: (CssRadialGradient elliptical: {20 px. 30 px} at: { 20 px. 30 px} fading: { CssSVGColors red. CssSVGColors yellow. CssSVGColors green }) ];
  build
```
evaluates to:
```css
div
{
	background: radial-gradient(yellow, green);
}

div
{
	background: radial-gradient(farthest-corner ellipse at center, yellow, green);
}

div
{
	background: radial-gradient(farthest-side ellipse at left bottom, red, yellow 50px, green);
}

div
{
	background: radial-gradient(20px 30px ellipse at 20px 30px, red, yellow, green);
}
```

To make the gradient repeatable, just send to it the message `beRepeating`. For Example:
```smalltalk
(CssRadialGradient fading: { CssSVGColors yellow. CssSVGColors green }) beRepeating
```
renders as:
```css
repeating-radial-gradient(yellow, green);
```

#### Box Shadows

This abstraction simplifies the use of the `box-shadow` property. Let's see some examples:

```smalltalk
CssBoxShadow horizontalOffset: 64 px verticalOffset: 64 px blurRadius: 12 px  spreadDistance: 40 px color: (CssSVGColors black newWithAlpha: 0.4)
```
renders as:
```css
64px 64px 12px 40px rgba(0,0,0,0.4)
```

```smalltalk
(CssBoxShadow horizontalOffset: 64 px verticalOffset: 64 px blurRadius: 12 px  spreadDistance: 40 px color: (CssSVGColors black newWithAlpha: 0.4)) , 
(CssBoxShadow horizontalOffset: 12 px verticalOffset: 11 px blurRadius: 0 px  spreadDistance: 8 px color: (CssSVGColors black newWithAlpha: 0.4)) beInset
```
renders as:
```css
64px 64px 12px 40px rgba(0,0,0,0.4), inset 12px 11px 0px 8px rgba(0,0,0,0.4)
```
			
[Go to next chapter](Tutorial - Part II.md)
