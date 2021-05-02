#!/bin/bash

cp -f simple-java-maven-app-original/target/*.jar jenkins/build/

echo "++++++++++++++++++++++++++++++++++++++++"
echo "*******Building Docker Image************"
echo "++++++++++++++++++++++++++++++++++++++++"

cd jenkins/build/ && docker-compose -f docker-compose-build.yml build --no-cache
