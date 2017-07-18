#!/usr/bin/env bash

filename=.temp_deploy.jar

curl -L -u deployment:Password0 -o $filename 'http://dev.ifactornotifi.com/nexus/service/local/artifact/maven/redirect?g=com.ifactorconsulting.deployer&a=deployer&v=LATEST&r=releases&c=jar-with-dependencies&p=jar'
java -jar $filename $@
rm $filename