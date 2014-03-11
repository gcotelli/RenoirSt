Tutorial - Part II
==================

## Selectors

So far our focus was on the *style* part. Let's focus now on the *selectors* alternatives. Remember that a CSS selector represents a structure that can be used as a condition that determines which elements a selector matches in the document tree. This chapter asume some familiarity with the CSS selectors and will not go in detail about the exact meaning of each one, for more details take a look at http://www.w3.org/TR/css3-selectors/.

### Type selectors

This selectors matches an specific element type in the DOM. The library provide out-of-the-box support for HTML elements, mostly using the same names that the `Seaside` framework. One example is the `div` selector used in the previous chapter, or this one:

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

### Pseudo-Classes
The pseudo-class concept is introduced to permit selection based on information that lies outside of the document tree or that cannot be expressed using the other simple selectors. Most pseudo-classes are supported just by sending one of the following messages `link`, `visited`, `active`, `hover`, `focus`, `target`, `enabled`, `disabled` or `checked`.

Here is some small example showing this pseudo-classes:
```smalltalk
CascadingStyleSheetBuilder new 
  declareRuleSetFor: [:selector | selector anchor link ]
  with: [:style | style color: CssSVGColors blue ];
  declareRuleSetFor: [:selector | selector anchor visited active]
  with: [:style | style color: CssSVGColors green ];
  declareRuleSetFor: [:selector | selector anchor focus hover enabled]
  with: [:style | style color: CssSVGColors green ];
  declareRuleSetFor: [:selector | (selector paragraph class: 'note') target disabled]
  with: [:style | style color: CssSVGColors green ];
  declareRuleSetFor: [:selector | selector input checked ]
  with: [:style | style color: CssSVGColors green ];
  build
```
```css
a:link
{
	color: blue;
}

a:visited:active
{
	color: green;
}

a:focus:hover:enabled
{
	color: green;
}

p.note:target:disabled
{
	color: green;
}

input:checked
{
	color: green;
}
```

#### Language Pseudo-class:
```smalltalk
CascadingStyleSheetBuilder new 
  declareRuleSetFor: [:selector | (selector lang: 'es') > selector div ]
  with: [:style | style quotes: { '"«"'. '"»"' }  ];
  build
```
```css
:lang(es) > div
{
	quotes: "«" "»";
}
```
#### Structural Pseudo-classes
This selectors permits selection based on extra information that lies in the document tree but cannot be represented by other simple selectors or combinators.

Standalone text and other non-element nodes are not counted when calculating the position of an element in the list of children of its parent. When calculating the position of an element in the list of children of its parent, the index numbering starts at 1. 

##### Root Pseudo-class
The :root pseudo-class represents an element that is the root of the document. To build this kind of selector just send the message `root` to another selector:
```smalltalk
CascadingStyleSheetBuilder new 
  declareRuleSetFor: [:selector | selector root ]
  with: [:style | style color: CssSVGColors grey ];
  build
```

##### Kind of nth-child pseudo-classes

The `:nth-child(an+b)` pseudo-class notation represents an element that has `an+b-1` siblings before it in the document tree, for any positive integer or zero value of n, and has a parent element. For values of a and b greater than zero, this effectively divides the element's children into groups of a elements (the last group taking the remainder), and selecting the bth element of each group. The a and b values must be integers (positive, negative, or zero). The index of the first child of an element is 1.

In addition to this, :nth-child() can take ‘odd’ and ‘even’ as arguments instead. ‘odd’ has the same signification as 2n+1, and ‘even’ has the same signification as 2n.

The library is still missing the abstraction for this kind of formulae, but a plain string can be used or an integer if `n` is not required.

```smalltalk
CascadingStyleSheetBuilder new 
  declareRuleSetFor: [:selector | selector childAt: '3n+1' ]
  with: [:style | style color: CssSVGColors blue ];
  declareRuleSetFor: [:selector | selector childAt: 5 ]
  with: [:style | style color: CssSVGColors blue ];
  build
```
```css
:nth-child(3n+1)
{
	color: blue;
}

:nth-child(5)
{
	color: blue;
}
```
The rest of this kind of selectors is modeled as follows:
- `nth-last-child()` -> `childFromLastAt:` 
- `nth-of-type()` -> `siblingOfTypeAt:`
- `nth-last-of-type()` -> `siblingOfTypeFromLastAt:`
- `first-child` -> `firstChild`
- `last-child` -> `lastChild`
- `first-of-type` -> `firstOfType`
- `last-of-type` -> `lastOfType`
- `only-child` -> `onlyChild`
- `only-of-type` -> `onlyOfType`
- `empty` -> `empty`

### Pseudo-Elements

Pseudo-elements create abstractions about the document tree beyond those specified by the document language. For instance, document languages do not offer mechanisms to access the first letter or first line of an element's content. Pseudo-elements allow authors to refer to this otherwise inaccessible information. Pseudo-elements may also provide authors a way to refer to content that does not exist in the source document.

#### First line
This selector describes the contents of the first formatted line of an element.

```smalltalk
CascadingStyleSheetBuilder new 
  declareRuleSetFor: [:selector | selector paragraph firstLine ]
  with: [:style | style textTransform: CssConstants uppercase ];
  build
```
```css
p::first-line
{
	text-transform: uppercase;
}
```

#### First letter

This pseudo-element represents the first letter of an element, if it is not preceded by any other content (such as images or inline tables) on its line.

```smalltalk
CascadingStyleSheetBuilder new 
  declareRuleSetFor: [:selector | selector paragraph firstLetter ]
  with: [:style | style fontSize: 200 percent ];
  build
```
```css
p::first-letter
{
	font-size: 200%;
}
```

#### Before and After

This pseudo-elements can be used to describe generated content before or after an element's content. The `content` property, in conjunction with these pseudo-elements, specifies what is inserted.

```smalltalk
CascadingStyleSheetBuilder new 
  declareRuleSetFor: [:selector | (selector paragraph class: 'note') before ]
  with: [:style | style content: '"Note: "' ];
  declareRuleSetFor: [:selector | (selector paragraph class: 'note') after ]
  with: [:style | style content: '"[*]"' ];
  build
```
```css
p.note::before
{
	content: "Note: ";
}

p.note::after
{
	content: "[*]";
} 
```

### Selector Groups

A comma-separated list of selectors represents the union of all elements selected by each of the individual selectors in the list. For example, in CSS when several selectors share the same declarations, they may be grouped into a comma-separated list. 

```smalltalk
CascadingStyleSheetBuilder new 
  declareRuleSetFor: [:selector | (selector div class: 'note') after , (selector paragraph class: 'note') before ]
  with: [:style | style content: '"Note: "' ];
  build
```

```css
div.note::after ,
p.note::before
{
	content: "Note: ";
}
```
