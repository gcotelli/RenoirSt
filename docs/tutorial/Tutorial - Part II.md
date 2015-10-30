Tutorial - Part II
==================

## Selectors

So far our focus was on the *style* part of the rule. Let's focus now on the available *selectors*. Remember that a CSS selector represents a structure used to match elements in the document tree. This chapter asume some familiarity with the CSS selectors and will not go in detail about the exact meaning of each one. For more details you can take a look at http://www.w3.org/TR/css3-selectors/.

### Type selectors

These selectors match a specific element type in the DOM. The library provides out-of-the-box support for HTML elements. One example is the `div` selector used in the previous chapter. Another is the following:

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

To get a list of the supported type selectors inspect `CssSelector selectorsInProtocol: '*RenoirSt-HTML'`.

### Combinators

One of the most common use cases is the **descendant combinator**.
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
> **Hint:** You should not hardcode the classes and ids, they should be obtained from the same object that holds them for the HTML generation. You probably have some code setting the class(es) and/or id(s) to a particular HTML element.

### Attribute Selectors

Attribute selectors are useful to match an element if that element has an attribute that matches the attribute represented by the selectors.

#### Attribute presence and value selectors

Attribute presence:
```smalltalk
CascadingStyleSheetBuilder new 
  declareRuleSetFor: [:selector | selector h1 havingAttribute: 'title' ]
  with: [:style | style color: CssSVGColors blue ];
  build
```
```css
h1[title]
{
	color: blue;
}
```

exact attribute value matching:
```smalltalk
CascadingStyleSheetBuilder new 
  declareRuleSetFor: [:selector | selector span withAttribute: 'class' equalTo: 'example' ]
  with: [:style | style color: CssSVGColors blue ];
  build
```
```css
span[class="example"]
{
	color: blue;
}
```

inclusion:

```smalltalk
CascadingStyleSheetBuilder new 
  declareRuleSetFor: [:selector | selector anchor attribute: 'rel' includes: 'copyright' ]
  with: [:style | style color: CssSVGColors blue ];
  build
```
```css
a[rel~="copyright"]
{
	color: blue;
}
```
and:

```smalltalk
CascadingStyleSheetBuilder new 
  declareRuleSetFor: [:selector | selector anchor firstValueOfAttribute: 'hreflang' beginsWith: 'en' ]
  with: [:style | style color: CssSVGColors blue ];
  build
```
```css
a[hreflang|="en"]
{
	color: blue;
}
```

#### Substring matching attribute selectors

This selectors are provided for matching substrings in the value of an attribute: 
- `attribute:beginsWith:` 
- `attribute:endsWith:` 
- `attribute:includesSubstring:`

```smalltalk
CascadingStyleSheetBuilder new 
  declareRuleSetFor: [:selector | selector anchor attribute: 'type' beginsWith: 'image/' ]
  with: [:style | style color: CssSVGColors blue ];
  build
```
```css
a[type^="image/"]
{
	color: blue;
}
```

```smalltalk
CascadingStyleSheetBuilder new 
  declareRuleSetFor: [:selector | selector anchor attribute: 'type' endsWith: '.html' ]
  with: [:style | style color: CssSVGColors blue ];
  build
```
```css
a[type$=".html"]
{
	color: blue;
}
```

```smalltalk
CascadingStyleSheetBuilder new 
  declareRuleSetFor: [:selector | selector paragraph attribute: 'title' includesSubstring: 'hello' ]
  with: [:style | style color: CssSVGColors blue ];
  build
```
```css
p[title*="hello"]
{
	color: blue;
}```

### Pseudo-Classes
The pseudo-class concept is introduced to allow selection based on information that lies outside of the document tree or that cannot be expressed using the simpler selectors. Most pseudo-classes are supported just by sending one of the following messages `link`, `visited`, `active`, `hover`, `focus`, `target`, `enabled`, `disabled` or `checked`.

Here is a small example that uses the pseudo-classes:
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

#### Negation Pseudo-class:

The negation pseudo-class, `:not(X)`, is a functional notation taking a simple selector (excluding the negation pseudo-class itself) as an argument. It represents an element that is not represented by its argument. For more information take a look at: http://www.w3.org/TR/css3-selectors/#negation.

This selector is supported sending the message `not:`. Lets see an example:
```smalltalk
CascadingStyleSheetBuilder new 
  declareRuleSetFor: [:selector | selector button not: (selector havingAttribute: 'DISABLED') ]
  with: [:style | style color: CssSVGColors blue ];
  build
```
```css
button:not([DISABLED])
{
	color: blue;
}
```
#### Structural Pseudo-classes
These selectors allow selection based on extra information that lies in the document tree but cannot be represented by other simpler selectors nor combinators.

Standalone text and other non-element nodes are not counted when calculating the position of an element in the list of children of its parent. When calculating the position of an element in the list of children of its parent, the index numbering starts at 1. 

##### Root Pseudo-class
The :root pseudo-class represents an element that is the root of the document. To build this kind of selector just send the message `root` to another selector:
```smalltalk
CascadingStyleSheetBuilder new 
  declareRuleSetFor: [:selector | selector root ]
  with: [:style | style color: CssSVGColors grey ];
  build
```

##### Kind of nth-child Pseudo-classes

The `:nth-child(an+b)` pseudo-class notation represents an element that has `an+b-1` siblings before it in the document tree, for any positive integer or zero value of n, and has a parent element. For values of a and b greater than zero, this effectively divides the element's children into groups of a elements (the last group taking the remainder), and selecting the bth element of each group. The a and b values must be integers (positive, negative, or zero). The index of the first child of an element is 1.

In addition to this, `:nth-child()` can take ‘odd’ and ‘even’ as arguments instead. The value ‘odd’ is equivalent to 2n+1, whereas ‘even’ is equivalent to 2n.

Since version 1.1.0 the library supports an abstraction for this kind of formulae (`CssLinealPolynomial`), or just an integer if `n` is not required.

```smalltalk
CascadingStyleSheetBuilder new 
  declareRuleSetFor: [:selector | selector childAt: 3 n + 1 ]
  with: [:style | style color: CssSVGColors blue ];
  declareRuleSetFor: [:selector | selector childAt: 5 ]
  with: [:style | style color: CssSVGColors blue ];
  declareRuleSetFor: [:selector | selector childAt: CssConstants even]
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

:nth-child(even)
{
	color: blue;
}
```

`CssLinealPolynomial` instances can be created by sending the message `n` to an integer, and later this instances can receive the messages `+` or `-` to configure the independent coefficient.

Some examples:
```smalltalk
1 n "Prints as: n".
2 n -3 "Prints as: 2n-3".
3 n + 1 "Prints as: 3n+1"
```

The rest of the selectors in this category are modeled using the following messsages:
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

These pseudo-elements can be used to describe generated content before or after an element's content. The `content` property, in conjunction with these pseudo-elements, specifies what is inserted.

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

[Go to next chapter](Tutorial - Part III.md)
