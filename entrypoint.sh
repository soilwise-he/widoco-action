#!/bin/sh -l

echo "Processing $1 to $2 with options $3"

cd /usr/local/widoco

${JAVA_HOME}/bin/java -jar widoco.jar -ontFile $1 -outFolder $2 -rewriteAll -uniteSections  $3


