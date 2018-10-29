# SingleProject
This project is the main root for setting up a single project. 
It contains slight changes to how it is setup from the Single Project for McJty's mods.

MC Folder contains RetroBees buld.gradle and gradle.properties as an example.

#Modifications:
git-maven.gradle : The primary configuration for maven repositories and gradle.properties.
gradle.properties: Includes entries for signing .jar files.

#Setup for using git-maven.gradle:
All settings are configured in the subprojects gradle.properties include:

mcversion=
forgeversion=
mcp_mappings=
version_major=
version_minor=
version_patch=
GITHOST=
REPOSITORY_NAME=
COMPANY=
LICENSE_NAME=
LICENSE_URL=
