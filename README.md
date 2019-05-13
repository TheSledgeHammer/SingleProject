# SingleProject
This project is the main root for setting up a single project.
It contains slight changes to how it is setup from the Single Project for McJty's mods.

MC Folder contains RetroBees build.gradle and gradle.properties as an example.

# Automation Scripts:
setupProjects.sh: Will clone all git repositories listed in this file into Folder Projects and Copy the Scripts folder to that Repo folder

updateProjects.sh: Uses the copied Scripts folder to perform a git fetch on each repository

buildProjects.sh: Will compile, upload projects to bintray and clean

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
