#!/usr/bin/env bash
cd Projects
./gradlew build
./gradlew publish
./gradlew uploadArchives
./gradlew bintrayUpload
./gradlew clean
