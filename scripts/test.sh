#!/bin/bash
## DeGOps: 0.0.1
set -o errexit
set -o nounset

go test -v -race -cover