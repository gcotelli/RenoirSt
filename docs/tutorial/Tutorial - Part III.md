Tutorial - Part III
===================

## Important Rules

CSS attempts to create a balance of power between author and user style sheets. By default, rules in an author's style sheet override those in a user's style sheet.

However, for balance, an `!important` declaration takes precedence over a normal declaration. Both author and user style sheets may contain `!important` declarations, and user `!important` rules override author `!important` rules. This CSS feature improves accessibility of documents by giving users with special requirements control over presentation.

The library provides support for this feature. Let's see an example:

```smalltalk

```
