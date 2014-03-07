Tutorial - Chapter 2
====================

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

### Pseudo-Classes
The pseudo-class concept is introduced to permit selection based on information that lies outside of the document tree or that cannot be expressed using the other simple selectors. Most pseudo-classes are supported just by sending a one of the following messages `link`, `visited`, `active`, `hover`, `focus`, `target`, `enabled`, `disabled` or `checked`.

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
