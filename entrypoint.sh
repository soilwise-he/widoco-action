#!/bin/sh -l

echo "Processing $1 with options $2"

cd /usr/local/widoco

${JAVA_HOME}/bin/java -jar widoco.jar -ontFile /tmp/gha/$1 -outFolder /tmp/gha/out -rewriteAll -uniteSections  $2


