Tutorial - Part III
===================

## Important Rules

CSS attempts to create a balance of power between author and user style sheets. By default, rules in an author's style sheet override those in a user's style sheet.

However, for balance, an `!important` declaration takes precedence over a normal declaration. Both author and user style sheets may contain `!important` declarations, and user `!important` rules override author `!important` rules. This CSS feature improves accessibility of documents by giving users with special requirements control over presentation.

The library provides support for this feature by sending `beImportantDuring:` message to the style. Let's see an example:

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
Evaluates to:
```css
p
{
	text-indent: 1em !important;
	font-style: italic !important;
	font-size: 18pt;
}
```
Note that the important properties must be created by sending the messages to the inner argument `importantStyle` instead of the outer argument `style`.

##### References:
- http://www.w3.org/TR/CSS2/cascade.html#important-rules

## Media Queries

A `@media` rule specifies the target media types of a set of statements. The `@media` construct allows style sheet rules that apply to various media in the same style sheet. Style rules outside of `@media` rules apply to all media types that the style sheet applies to. At-rules inside `@media` are invalid in CSS2.1.

The most basic media rule consists of specifying just a media type:
```smalltalk
CascadingStyleSheetBuilder new 
	declare: [ :cssBuilder | 
		cssBuilder
			declareRuleSetFor: [ :selector | selector id: #oop ] 
			with: [ :style | style color: CssSVGColors red ]
		]
	forMediaMatching: [ :queryBuilder | queryBuilder type: CssMediaQueryConstants print ];
	build
```

To use media queries in the library just send the message `declare:forMediaMatching:` to the builder. The first closure is evaluated with an instance of a `CascadingStyleSheetBuilder` and the second one with a builder of media queries.

The media query builder will match any media type by default. To specify a media type just send it the message `type:` with the corresponding media type. The class `CssMediaQueryConstants` provides easy access to the following media types: 
`braille`, `embossed`, `handheld`, `print`, `projection`, `screen`, `speech`, `tty` and `tv`.

The media query builder supports a variety of messages for additional conditions (called media features). Media features are used in expressions to describe requirements of the output device.

The following media feature messages are supported:
- Accepting a `CssLenght`
	- `width:` 
	- `minWidth:`
	- `maxWidht:`
	- `height:`
	- `minHeight:`
	- `maxHeight:`
	- `deviceWidth:`
	- `minDeviceWidth:`
	- `maxDeviceWidth:`
	- `deviceHeight:`
	- `minDeviceHeight:`
	- `maxDeviceHeight:`
- `orientation:` accepting `CssMediaQueryConstants portrait` or `CssMediaQueryConstants landscape`
- Accepting fractions as aspect ratios
	- `aspectRatio:`
	- `minAspectRatio:`
	- `maxAspectRatio:`
	- `deviceAspectRatio:`
	- `minDeviceAspectRatio:`
	- `maxDeviceAspectRatio:`
- Accepting integers
	- `color:` the argument describes the number of bits per color component of the output device
	- `minColor:`
	- `maxColor:`
	- `colorIndex:` the argument describes the number of entries in the color lookup table of the output device
	- `minColorIndex:`
	- `maxColorIndex:`
	- `monochrome:` the argument describes the number of bits per pixel in a monochrome frame buffer
	- `minMonochrome:`
	- `maxMonochrome:`
	- `grid:` the argument must be 1 or 0
- Accepting a `CssResolution`
	- `resolution:`
	- `minResolution:`
	- `maxResolution:`
- `scan:` accepting `CssMediaQueryConstants progressive` or `CssMediaQueryConstants interlace`

A new basic type is added: `CssResolution`. This kind of measures can be created sending the messages `dpi` (dots per inch) or `dpcm` (dots per centimeter) to an integer or float.

Let's see a final example to better understand the media features support:
```smalltalk
CascadingStyleSheetBuilder new 
	declare: [ :cssBuilder | 
		cssBuilder
			declareRuleSetFor: [ :selector | selector id: #oop ] 
			with: [ :style | style color: CssSVGColors red ]
		]
	forMediaMatching: [ :queryBuilder | 
		queryBuilder 
			orientation: CssMediaQueryConstants landscape;
			resolution: 300 dpi
		];
	build
```
Evaluates to:
```css
@media all and (orientation: landscape) and (resolution: 300dpi)
{
	#oop
	{
		color: red;
	}
}
```
##### References:
- http://www.w3.org/TR/CSS2/media.html
- http://www.w3.org/TR/css3-mediaqueries/