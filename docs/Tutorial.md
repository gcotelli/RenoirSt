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
