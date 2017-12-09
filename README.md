# go-dev
Go docker image with preloaded toolset

This image builds in the following tools along with go:

* govendor - https://github.com/kardianos/govendor
* golint
* goimports
* go dep - https://github.com/golang/dep

Use the netrc-check.sh to load your .netrc file into ~/ for go dep.

To use .netrc with github personal access tokens, add a .netrc file with
the following contents in your working directory:
```
machine github.com
    login GITHUB_TOKEN
```
