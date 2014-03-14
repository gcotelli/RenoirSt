How to contribute
=================

There's several ways to contribute to the project: reporting bugs, sending feedback, proposing ideas for new features, fixing or adding documentation, promoting the project, or even contributing code changes.

## How to report issues

The issue tracker is this GitHub repository. Please use the labels to categorize the issue. 

## How to contribute code

Some initial highlights:

- This project is MIT licensed, so any code contribution must be under the same license.
- This project uses [semantic versioning](http://semver.org/), so keep it in mind when you make backwards-incompatible changes. If some backwards incompatible change is made the major version MUST be increased.
- The source code is hosted in [SmalltalkHub](http://www.smalltalkhub.com). Create an account and ask to be added as a collaborator to the project, or upload the changes to your own repository and provide a link in the issue requiring the merge. 
- Code contributions without test cases have a lower probability of being merged into the main branch.

The development version can be loaded in a Pharo 3 image evaluating the following code snippet:
```smalltalk
Gofer it    
    url: 'http://smalltalkhub.com/mc/gcotelli/RenoirSt/main';
    configurationOf: 'RenoirSt';
    loadDevelopment
```
or taking the latests development image from the [Continous Integration Server](https://ci.inria.fr/pharo-contribution/job/RenoirSt/).

## How to contribute documentation

The project documentation is mantained in this GitHub repository in the `docs` folder. The `stable` branch contains the documentation of the latest stable version and `master` the documentation updated with the latest changes in the development branch. To contribute some documentation or improve the existing, feel free to fork this repository, make your changes and send a pull request.

Remember the docs are licensed under a CC Attribution-ShareAlike license. 

### Useful References:

- [W3c Css Home](http://www.w3.org/Style/CSS/)
