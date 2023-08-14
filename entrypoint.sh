#!/bin/sh -l
POM_PATH="${1-.}"
MAVEN_ADDITIONAL_ARGS="${2-.}"

MAVEN_CMD="mvn -f $POM_PATH/pom.xml help:evaluate -Dexpression=project.version -q -DforceStdout $MAVEN_ADDITIONAL_ARGS"

echo "Running '$MAVEN_CMD' ..."
POM_VERSION=$(eval $MAVEN_CMD)

echo "Founded version ${POM_VERSION}"
echo "version=$POM_VERSION" >> $GITHUB_OUTPUT
