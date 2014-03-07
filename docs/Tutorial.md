Tutorial
========

### Table Of Contents
- Introduction
- Basics
- Selectors
- Important Rules
- Combinatory selectors
- Media Queries
- Web Frameworks Integration
- Advanced Tips
- Links

## Introduction

This tutorial asumes some knowledge of CSS and Pharo Smalltalk.

The main entry point for the library is the class `CascadingStyleSheetBuilder`. Let's see some minimalist example. Copy in a workspace and `Inspect-it (Alt+i)`:

```smalltalk
CascadingStyleSheetBuilder new build
```

Beautiful! you have now an inspector on your fisrt (empty and useless) style sheet. Let's do now something more useful. Real stylesheets are composed of rules (or rule-sets), where each one has a selector and a declaration group. The selector determines if the rule applies to some element in the DOM, and the declaration group specifies the style to apply.

## Basics

Our first style sheet will simply assign a margin to every `div` element in the DOM.

```smalltalk
CascadingStyleSheetBuilder new 
  declareRuleSetFor: [:selector | selector div ]
  with: [:style | style margin: 2 px ];
  build
```
the expected result is:
```css
div
{
  margin: 2px;
}
```
Let's analyze it. The message `declareRuleSetFor:with:` is used to configure a rule-set in the builder. It uses two closures, the first one is used to define the *selector* and the second one the *style*. The `selector`argument of the first closure provides an API to construct the selector (more on this later). The `style`argument on the second closure provides the API to declare CSS properties and his values.

The properties API is mostly defined following this rules:
- Properties without dashes in the name are directly mapped: `margin` became `margin:` message send.
- Properties with one or more dashes are mapped using camel case: `margin-top` became `marginTop:` message send.

### Basic CSS Types

#### Lenghts

Another interest thing is `2 px` message send. This message send produces a `CssLenght`. The library provides out-of-the-box support for the lenght units in the CSS spec. There's extensions to `Integer` and `Float` classes allowing to obtain lenghts. The supported units are: 
- `em` relative to font size
- `ex` relative to "x" height
- `cm` centimeters
- `mm` millimeteres
- `in` inches
- `pc` picas
- `pt` points 
- `px` pixels (note that CSS has some special definition for pixel)

It also support the creation of percentages: `50 percent` is expressed as `50%` in the resulting CSS.

Some properties requires integer or floating point values. In this cases just use the Pharo provided integer and float support. For example: 
```smalltalk
CascadingStyleSheetBuilder new 
  declareRuleSetFor: [:selector | selector div ]
  with: [:style | style zIndex: 2 ];
  build
```

#### Colors

The library also supports abstractions for properties requiring color values. It provides a shared pool `CssSVGColors` providing easy access to colors in the SVG 1.0 list, and some abstractions (`CssRGBColor` y `CssHSLColor`) to create colors in the rgb or hsl space including alpha support.

```smalltalk
CascadingStyleSheetBuilder new 
  declareRuleSetFor: [:selector | selector div ]
  with: [:style | 
    style 
      backgroundColor: CssSVGColors aliceBlue;
      borderColor: (CssRGBColor red: 0 green: 128 blue: 0 alpha: 0.5)];
  build
```

creates an stlye sheet for
```css
div
{
	background-color: aliceblue;
	border-color: rgba(0,128,0,0.5);
}
```
> **Hint:** In a real scenario don't harcode the colors like this examples, put it in some object representing a theme or something similar and use a more functional name.

RGB-Colors also support percentual values:

```smalltalk
CascadingStyleSheetBuilder new 
  declareRuleSetFor: [:selector | selector div ]
  with: [:style | style borderColor: (CssRGBColor red: 0 percent green: 50 percent blue: 0 percent) ];
  build
```
notice the difference in the function name because there's no alpha channel specification:
```css
div
{
	border-color: rgb(0%,50%,0%);
}
```

#### Constants

A lot of properties values are just keyword constants. This support is provided by the class `CssConstants`.

```smalltalk
CascadingStyleSheetBuilder new 
  declareRuleSetFor: [:selector | selector div ]
  with: [:style | style textAlign: CssConstants justify ];
  build
```
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
  with: [:style | style margin: { 2 px. 4px } ];
  build
```
being the resulting style sheet:
```css
div
{
	margin: 2px 4 px;
}
```
## Selectors

So far our focus was on the *style* part. Let's focus now on the *selectors* alternatives. Remember that a CSS selector represents a structure that can be used as a condition that determines which elements a selector matches in the document tree.

### Type selectors

This selectors matches an specific element type in the DOM. The library provide out-of-the-box support for HTML elements, mostly using the same names that the `Seaside` framework. One example is the `div` selector used in the previous sections, or:

```smalltalk
CascadingStyleSheetBuilder new 
  declareRuleSetFor: [:selector | selector orderedList ]
  with: [:style | style listStyleType: CssConstants lowerRoman ];
  build
```
```css
ol
{
	list-style-type: lower-roman;
}
```

### Combinators

One of the most common use cases are the use of the **descendant combinator**.
```smalltalk
CascadingStyleSheetBuilder new 
  declareRuleSetFor: [:selector | selector div orderedList ]
  with: [:style | style listStyleType: CssConstants lowerRoman ];
  build
```
```css
div ol
{
	list-style-type: lower-roman;
}
```

#### Child combinator
```smalltalk
CascadingStyleSheetBuilder new 
  declareRuleSetFor: [:selector | selector div > selector orderedList ]
  with: [:style | style listStyleType: CssConstants lowerRoman ];
  build
```
```css
div > ol
{
	list-style-type: lower-roman;
}
```

#### Adjacent & General Siblings combinators
```smalltalk
CascadingStyleSheetBuilder new 
  declareRuleSetFor: [:selector | selector div + selector orderedList ]
  with: [:style | style listStyleType: CssConstants lowerRoman ];
  build
```
```css
div + ol
{
	list-style-type: lower-roman;
}
```
```smalltalk
CascadingStyleSheetBuilder new 
  declareRuleSetFor: [:selector | selector div ~ selector orderedList ]
  with: [:style | style listStyleType: CssConstants lowerRoman ];
  build
```
```css
div ~ ol
{
	list-style-type: lower-roman;
}
```

### Class and Id Selectors
```smalltalk
CascadingStyleSheetBuilder new 
  declareRuleSetFor: [:selector | (selector div class: 'pastoral') id: #account5 ]
  with: [:style | style listStyleType: CssConstants lowerRoman ];
  build
```
```css
div.pastoral#account5
{
	list-style-type: lower-roman;
}
```
> **Hint:** Don't harcode the classes and ids, ask it to the same object that holds it for the HTML generation. Probably you have some place in your code setting the class or id to a particular HTML element.
