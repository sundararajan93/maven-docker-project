#!/bin/bash

echo "maven-project" > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

echo "-----Copying Auth file-----"

scp -r /tmp/.auth sundar@192.168.1.4:/tmp/.auth
scp -r ./jenkins/deploy/publish sundar@192.168.1.4:~/maven/publish
ssh sundar@192.168.1.4 "~/maven/publish"
