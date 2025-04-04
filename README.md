# WIDOCO action

A github action to build docs for a knowledge graph, using [widoco](https://github.com/dgarijo/Widoco)

# Required input and output arguments.

- file-input: '/github/workspace/example.ttl'
- folder-output: '/github/workspace/public'
- options: '-excludeProvenance -getOntologyMetadata' # the `-rewriteAll` &  `-uniteSections-` are applied by default
  
# An example of how to use your action in a workflow.

```
jobs:
  widoco:
    runs-on: ubuntu-latest
    name: A conversion of ttl to html
    steps:
      - name: convert
        uses: soilwise-he/widoco-action@v0.3
        with:
          file-input: '/github/workspace/example.ttl'
          folder-output: '/github/workspace/public'
          options: '-excludeProvenance -getOntologyMetadata'
```

or see it in action at [soil-health actions](https://github.com/soilwise-he/soil-health/blob/main/.github/workflows/widoco.yml) -> <https://soilwise-he.github.io/soil-health>
