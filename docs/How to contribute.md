How to contribute
=================

There's several ways to contribute to the project: reporting bugs, sending feedback, proposing ideas for new features, fixing or adding documentation, promoting the project, or even contributing code changes.

## How to report issues

The issue tracker is this GitHub repository. Please use the labels to categorize the issue. 

## How to contribute code

Some initial highlights:

- This project is MIT licensed, so any code contribution must be under the same license.
- This project uses [semantic versioning](http://semver.org/), so keep it in mind when you make backwards-incompatible changes. If some backwards incompatible change is made the major version MUST be increased.
- The source code is hosted in this GitHub repository using the filetree format in the `source` folder. The master branch contains the latest changes, feel free to send pull requests or fork the project. 
- Code contributions without test cases have a lower probability of being merged into the main branch.

Step by step instructions
- Clone this repository (or a fork if you want) using the usual Git tooling
- Open a Pharo 4 or 5 image and evaluate in a Playground

```smalltalk
Metacello new
  baseline: 'RenoirSt';
  repository: 'filetree://REPO_LOCATION/source';
  load: 'Development'.
 ```
 
where `REPO_LOCATION` is the file system location for the cloned repository.

- Do the changes
- Save it from Pharo
- Commit using the usual Git tooling

## How to contribute documentation

The project documentation is mantained in this GitHub repository in the `docs` folder. The `stable` branch contains the documentation of the latest stable version and `master` the documentation updated with the latest changes in the development branch. To contribute some documentation or improve the existing, feel free to fork this repository, make your changes and send a pull request.

Remember the docs are licensed under a CC Attribution-ShareAlike license. 

### Useful References:

- [W3c Css Home](http://www.w3.org/Style/CSS/)
