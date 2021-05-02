#!/bin/bash

echo "+++++++++++++++++++++++++++++"
echo "***** Testing the JAR *******"
echo "+++++++++++++++++++++++++++++"

WORKSPACE=/home/geek/jenkins/pipeline

docker run --rm -v $WORKSPACE/simple-java-maven-app-original:/app -v /root/.m2/:/root/.m2/ -w /app maven:3-alpine "$@"
