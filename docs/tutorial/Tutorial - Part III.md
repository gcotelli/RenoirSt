Tutorial - Part III
===================

## Important Rules

CSS attempts to create a balance of power between author and user style sheets. By default, rules in an author's style sheet override those in a user's style sheet.

However, for balance, an `!important` declaration takes precedence over a normal declaration. Both author and user style sheets may contain `!important` declarations, and user `!important` rules override author `!important` rules. This CSS feature improves accessibility of documents by giving users with special requirements control over presentation.

The library provides support for this feature. Let's see an example:

```smalltalk
CascadingStyleSheetBuilder new 
  declareRuleSetFor: [:selector | selector paragraph ]
  with: [:style | 
    style beImportantDuring: [:importantStyle |
      importantStyle 
        textIndent: 1 em; 
        fontStyle: CssConstants italic
    ].
    style fontSize: 18 pt.
  ];
  build
```
will produce
```css
p
{
	text-indent: 1em !important;
	font-style: italic !important;
	font-size: 18pt;
}
```
Note that the important properties must be created by sending the messages to `importantStyle` argument and not the original `style`.
