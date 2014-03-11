Renoir.St [![Build Status](https://ci.inria.fr/pharo-contribution/buildStatus/icon?job=RenoirSt)](https://ci.inria.fr/pharo-contribution/job/RenoirSt/)
=========

*A DSL enabling programmatic cascading style sheet generation for Pharo Smalltalk*

##Goals
- Improve CSS integration with existing Web Frameworks
- Write & refactor in Smalltalk, deploy to CSS

###License:
This project is MIT licensed. Any contribution submitted to the code repository is considered to be under the same license.

###Benefits:
- Keep in sync your code changes with the changes in the CSS
- Use your favorite browsing and refactoring tools inside the same Pharo image to handle CSS  

###Highlights:
- **Supported Platforms**: [Pharo 3](http://www.pharo-project.org/)
- **Source Code Repository**: **RenoirSt** project in [Smalltalk Hub](http://www.smalltalkhub.com)
- **Issue Tracking**: In this GitHub repository.

###Get started!

- Download a ready to use [Pharo 3 image] (https://ci.inria.fr/pharo-contribution/job/RenoirSt/PHARO=30,VERSION=stable,VM=vm/lastSuccessfulBuild/artifact/)

or

- Open a workspace and evaluate:

```smalltalk
Gofer it    
    url: 'http://smalltalkhub.com/mc/gcotelli/RenoirSt/main';
    package: 'ConfigurationOfRenoirSt';
load.

(Smalltalk at: #ConfigurationOfRenoirSt) project stableVersion load
```

***********************************************

Now you can try the Hello World:

```smalltalk
CascadingStyleSheetBuilder new
	declareRuleSetFor: [:selector | selector body before]
	with: [:style | style content: '"Hello World"'];
	build
```

you should see something like this:
```css
body::before
{
	content: "Hello World";
}
```
