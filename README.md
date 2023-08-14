# maven-get-version-action
This Github Action retrieves the pom version from the pom.xml file and sets the version in the `version` output value usable in your workflow file which can be used in a following step by using `${{ steps.pom-version.outputs.version }}`.

## Example

To use this action in your project, use the following:

```yaml
- name: get-pom-version
  id: pom-version
  uses: PERES-Richard/maven-get-version-action@v2.1.1

- name: Print Maven POM project version
  run: echo "version = ${{ steps.pom-version.outputs.version }}"
```


## Params

```yaml
- name: get-pom-version
  id: pom-version
  uses: PERES-Richard/maven-get-version-action@v2.1.1
  with:
    path: "mavenproject/<yourproject>"  # Optional: pom.xml relative folder path
    args: "-s ~/.m2/settings.xml"       # Optional: maven additional args to run 
```

