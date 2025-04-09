# WIDOCO action

A github action to build docs for a knowledge graph, using [widoco](https://github.com/dgarijo/Widoco)

## Required input and output arguments.

- file-input: '/github/workspace/example.ttl'
- folder-output: '/github/workspace/public'
- options: '-excludeProvenance -getOntologyMetadata' # the `-rewriteAll` &  `-uniteSections-` are applied by default

## An example of how to use your action in a workflow.


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

## Run action locally

```
git pull https://github.com/soilwise-he/widoco-action
docker build -t soilwise-he/widoco-action .
docker run -v $(pwd):/tmp soilwise-he/widoco-action /tmp/example.ttl /tmp/out -webVowl
```

