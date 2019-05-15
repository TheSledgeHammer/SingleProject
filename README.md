# SingleProject
This project is the main root for setting up a single project.
It contains two variations to creating a single project.

# Setup Configurations
## Setup Config 1:
Is the original SingleProject forked from Mcjty with the Automation Scripts listed Below.

## Setup Config 2:
Is different again, as the config does not rely on gradle for the maintaining of all projects. Rather it uses the Automation Scripts below. Only using gradle when needed.
Thus, this Setup does not contain all the gradle files in the root of the project like Config 1.

MC Folder in each Config contains an Example build.gradle and gradle.properties for the style

# Automation Scripts:
setupProjects.sh: Will clone all git repositories listed in this file into Folder Projects and Copy the Scripts folder to that Repo folder

updateProjects.sh: Uses the copied Scripts folder to perform a git fetch on each repository

buildProjects.sh: Will compile and upload projects to bintray and clean

removeProjects.sh: Will Remove each of the Projects list in this file

# Modifications & Additions
git-maven.gradle : The primary configuration for maven repositories and gradle.properties.

- Can Upload and/ or Publish Artifacts as needed

mavenBintray.gradle: Upload to Jfrog bintray & jcenter:
- Must include bintray_user & bintray_key in root project gradle.properties
- Must include the following in your project build.gradle:

```
Plugins {
  id "com.jfrog.bintray" version "1.+"
}
apply from: rootProject.file('git-maven.gradle')
apply from: rootProject.file('mavenBintray.gradle')
```

gradle.properties: Includes entries for signing .jar files.
