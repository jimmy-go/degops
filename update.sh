#!/bin/bash
## DeGOps: 0.0.1
# Updates DeGOps files on current dir.
set -o errexit
set -o nounset

## Validate action

getmake() {
	curl -o Makefile https://raw.githubusercontent.com/jimmy-go/degops/develop/Makefile
}

getdocker() {
	curl -o Dockerfile https://raw.githubusercontent.com/jimmy-go/degops/develop/Dockerfile
}

getscript() {
	FILE=$1

	# Check for scripts overwrites.
	OW="${FILE}_overwrite.sh"
	if [ -f $OW ]; then
		echo "File overwrite found, skip: $OW"
		return
	fi

	# Load remote file.
	curl -o scripts/${FILE}.sh https://raw.githubusercontent.com/jimmy-go/degops/develop/scripts/${FILE}.sh
}

copyscripts() {
	mkdir -p scripts
	getscript "install"
	getscript "test"
	getscript "run"
	getscript "coverage"
	getscript "clean"
}

ACTION=$1
case "$ACTION" in
	all)
		getmake
		copyscripts
		getdocker
		;;
	makefile)
		getmake
		;;
	scripts)
		copyscripts
		;;
	container)
		getdocker
		;;
	*)
		echo $"Usage: $0 {all|scripts|makefile|container}"
		exit 1
esac

## Download.

## Copy overwrites.

# curl -o scripts/test.sh https://raw.githubusercontent.com/jimmy-go/degops/develop/scripts/test.sh
