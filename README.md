## Scripts for CI on github using Go. Mostly used for my all repos.

[![License MIT](https://img.shields.io/npm/l/express.svg)](http://opensource.org/licenses/MIT)
[![Build Status](https://travis-ci.org/jimmy-go/degops.svg?branch=master)](https://travis-ci.org/jimmy-go/degops)
[![Go Report Card](https://goreportcard.com/badge/github.com/jimmy-go/degops)](https://goreportcard.com/report/github.com/jimmy-go/degops)
[![GoDoc](http://godoc.org/github.com/jimmy-go/degops?status.png)](http://godoc.org/github.com/jimmy-go/degops)
[![Coverage Status](https://coveralls.io/repos/github/jimmy-go/degops/badge.svg?branch=master)](https://coveralls.io/github/jimmy-go/degops?branch=master)


### Usage:

_update.sh is the secret for all of this_

```
update.sh all           # Exec all options.

update.sh update        # Update update.sh itself.
update.sh scripts       # Update scripts directory.
update.sh makefile      # Overwrite Makefile.
update.sh container     # Overwrite Dockerfile.
update.sh travis        # Overwrite .travis.yml file.
```

### Oneliner copy & exec:

```
curl -o update.sh https://raw.githubusercontent.com/jimmy-go/degops/master/update.sh && chmod +x update.sh && ./update.sh all
```

### License:

The MIT License (MIT)

Copyright (c) 2018 Angel del Castillo

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
