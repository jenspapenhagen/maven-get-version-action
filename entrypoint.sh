#!/bin/sh -l
POM_PATH="${1-.}"
POM_VERSION=$(mvn -f $POM_PATH/pom.xml help:evaluate -Dexpression=project.version -q -DforceStdout)

echo "Founded version ${POM_VERSION}"
echo "version=$POM_VERSION" >> $GITHUB_OUTPUT
