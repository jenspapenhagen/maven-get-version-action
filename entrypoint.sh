#!/bin/sh -l
POM_PATH="${1-.}"
MAVEN_ADDITIONAL_ARGS="${2-.}"
POM_VERSION=$(mvn -f $POM_PATH/pom.xml help:evaluate -Dexpression=project.version -q -DforceStdout $MAVEN_ADDITIONAL_ARGS)

echo "Founded version ${POM_VERSION}"
echo "version=$POM_VERSION" >> $GITHUB_OUTPUT
