#!/usr/bin/env bash
#Clone Git Repositorys
cd Projects
git clone https://github.com/TheSledgeHammer/GroovyForge.git
git clone https://github.com/TheSledgeHammer/GroovyMC.git
git clone https://github.com/TheSledgeHammer/RetroBees.git

#Copy Directory Scripts to Repository Directory to Update
cd ..
cp -r Scripts Projects/GroovyForge
cp -r Scripts Projects/GroovyMC
cp -r Scripts Projects/RetroBees
