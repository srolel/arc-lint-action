# Arcanist Lint Action

This action will let you run `arc lint` in a github workflow and annotate a commit with the results.

## Usage

Add the following code to `.github/workflows/arclint.yml` file.

```yaml
name: Lint

on: push

jobs:
    arclint:
        name: Arcanist lint
        runs-on: ubuntu-latest
        steps:
            - uses: actions/checkout@v2
            - name: Check for lint
              uses: srolel/arc-lint-action@v1
```
