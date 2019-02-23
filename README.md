# CUBA example component

This is a CUBA 7 example component.

It contains the following features:

* run tests via `./build.sh`
* CI configured via Github actions
* Release component to bintray on creating a Github release


## Create a release

This CUBA component uses the [Gradle release](https://github.com/researchgate/gradle-release) plugin. This allows to automatically take care of release numbers, git tags etc.

In order to create a release 
1. `./gradlew release -Prelease.useAutomaticVersion=true` creates a git tag and pushes it to github
2. `hub release create <<VERSION_NUMBER>>` creates a release on github which triggers the release workflow
