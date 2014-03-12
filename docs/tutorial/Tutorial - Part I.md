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

#### Lenghts

Another to note is how `2 px` was interpreted. The resulting object is a `CssLenght`. The library provides out-of-the-box support for the lenght units in the CSS spec. There are extensions for `Integer` and `Float` classes allowing to obtain lenghts. The supported units are: 
- `em` relative to font size
- `ex` relative to "x" height
- `cm` centimeters
- `mm` millimeteres
- `in` inches
- `pc` picas
- `pt` points 
- `px` pixels (note that CSS has some special definition for pixel)

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

A lot of values for CSS properties are just keyword constants. This support is provided by the class `CssConstants`.

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

`ZnUrl` instances can be used as the value for properties requiring an URI. Both relative and absolute URLs are accepted.

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
	background-image: url("images/logo.png");
}

div.logo
{
	background-image: url("http://www.example.com/images/logo.png");
}
```
