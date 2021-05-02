#!/bin/bash

echo "****************************"
echo "*******Pushing Image********"
echo "****************************"

IMAGE="maven-project"

echo "------Logging In--------"

docker login -u geeksundar -p $PASS

echo "-------Tagging Image-------"

docker tag $IMAGE:$BUILD_TAG geeksundar/$IMAGE:$BUILD_TAG

echo "-------Pushing Image-------"

docker push geeksundar/$IMAGE:$BUILD_TAG

