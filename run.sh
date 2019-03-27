#!/bin/bash
# Downloads the spring-loaded lib if not existing and runs the full all-in-one
# (Alfresco + Share + Solr) using the runner project
springloadedfile=~/.m2/repository/org/springframework/springloaded/1.2.0.RELEASE/springloaded-1.2.0.RELEASE.jar

if [ ! -f $springloadedfile ]; then
mvn validate -Psetup
fi
MAVEN_OPTS="-javaagent:$springloadedfile -noverify -Xms1G -Xmx4G -XX:PermSize=600m" mvn install -Prun