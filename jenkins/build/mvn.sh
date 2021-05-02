#!/bin/bash

echo "********************************"
echo "********Building JAR************"
echo "********************************"

WORKSPACE=/home/geek/jenkins/jenkins_home/workspace/pipeline_docker_maven

docker run --rm -v $WORKSPACE/simple-java-maven-app-original:/app -v /root/.m2/:/root/.m2/ -w /app maven:3-alpine "$@"
