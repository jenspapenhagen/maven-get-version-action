#!/bin/sh -l
POM_PATH="${1-.}"
MAVEN_ADDITIONAL_ARGS="${2-.}"

if [ ${POM_PATH} = '.']; 
then
    echo "Load pom.xml directlry"
    MAVEN_CMD="mvn help:evaluate -Dexpression=project.version -q -DforceStdout $MAVEN_ADDITIONAL_ARGS"
else
    echo "Load pom.xml with path: " ${POM_PATH}
    MAVEN_CMD="mvn -f $POM_PATH/pom.xml help:evaluate -Dexpression=project.version -q -DforceStdout $MAVEN_ADDITIONAL_ARGS"
fi

echo "Running ${MAVEN_CMD} ..."
POM_VERSION=$(eval "$MAVEN_CMD")

echo "Founded version ${POM_VERSION}"
echo "version=$POM_VERSION" >> "$GITHUB_OUTPUT"

MAJOR_BASH="echo $POM_VERSION | cut -d. -f1"
POM_MAJOR=$(eval "$MAJOR_BASH")
echo "major=$POM_MAJOR" >> "$GITHUB_OUTPUT"

MINOR_BASH="echo $POM_VERSION | cut -d. -f2"
POM_MINOR=$(eval "$MINOR_BASH")
echo "minor=$POM_MINOR" >> "$GITHUB_OUTPUT"

PATCH_BASH="echo $POM_VERSION | cut -d. -f3 | sed 's/[^[:digit:]]\+//g'"
POM_PATCH=$(eval "$PATCH_BASH")
echo "patch=$POM_PATCH" >> "$GITHUB_OUTPUT"
