# maven-get-version-action
This Github Action retrieves the pom version from the pom.xml file and sets the version in the `version` output value usable in your workflow file.

## Example

To use this action in your project, use the following:

```yaml
- name: get-pom-version
  id: pom-version
  uses: PERES-Richard/maven-get-version-action@v2.0.0
```

The Action sets an output variable called `version` which can be used in a following step by using `${{ steps.pom-version.outputs.version }}`.

If you are using a monorepo or otherwise have some packages in a subdirectory of your repo, add the path to the `package.json` as a parameter:

```yaml
- name: get-pom-version
  id: pom-version
  uses: PERES-Richard/maven-get-version-action@v2.0.0
  with:
    path: mavenproject/<yourproject>
```

