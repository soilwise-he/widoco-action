# WIDOCO action

A github action to build docs for a knowledge graph, using [widoco](https://github.com/dgarijo/Widoco)

# Required input and output arguments.

- input-file: './data/example.ttl'
- options: '-excludeProvenance -getOntologyMetadata' # the `-rewriteAll` &  `-uniteSections-` are applied by default
  
# An example of how to use your action in a workflow.

```
name: mcf to iso

on:
  - push
  - delete

jobs:
  widoco:
    runs-on: ubuntu-latest
    name: A conversion of ttl to html
    steps:
      - name: checkout
        uses: actions/checkout@v4
        with:
          fetch-depth: 2
          path: '.'
      - run: git checkout HEAD^
      - name: convert
        id: convert
        uses: soilwise-he/widoco-action@v0.1
        with:
          file-input: './data/example.ttl'
          options: '-excludeProvenance -getOntologyMetadata'
```
