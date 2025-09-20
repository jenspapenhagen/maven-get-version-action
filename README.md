# maven-get-version-action

This GitHub Action retrieves the pom version from the pom.xml file and sets the full version in the `version` 
output value usable in your workflow file which can be used in a following step by using `${{ steps.pom-version.outputs.version }}`. 


Part of the pom.xml file:

```xml
<version>1.2.3-SNAPSHOT</version>
```
We can extract all Parts of the Version Number, with remove of "-SNAPSHOT" postfix.

[More Examples](#example)

## This GitHub Action support the semver schema

Given a version number MAJOR.MINOR.PATCH, increment the:

    MAJOR version when you make incompatible API changes
    MINOR version when you add functionality in a backward compatible manner
    PATCH version when you make backward compatible bug fixes

 More Information on Semantic Versioning:
 [Website](https://semver.org/)

## Example

To use this action in your project, use the following:

```yaml
- name: get-pom-version
  id: pom-version
  uses: jenspapenhagen/maven-get-version-action@v1.0.9

- name: Print Maven POM project version
  run: echo "version = ${{ steps.pom-version.outputs.version }}"
  
- name: Print Maven POM major version
  run: echo "major = ${{ steps.pom-version.outputs.major }}"
  
- name: Print Maven POM minor version
  run: echo "minor = ${{ steps.pom-version.outputs.minor }}"
    
- name: Print Maven POM patch version
  run: echo "patch = ${{ steps.pom-version.outputs.patch }}"
```

## Params

```yaml
- name: get-pom-version
  id: pom-version
  uses: jenspapenhagen/maven-get-version-action@v1.0.9
  with:
    path: "mavenproject/<yourproject>"  # Optional: pom.xml relative folder path (exclude "/pom.xml" in the path)
    args: "-s ~/.m2/settings.xml"       # Optional: maven additional args to run 
```
