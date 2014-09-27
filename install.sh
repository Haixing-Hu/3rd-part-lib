#!/bin/bash

declare -r USAGE="\
Usage: install.sh LIBRARY_NAME

	Install the LIBRARY_NAME to the local maven repository.
";

if (( $# != 1 )); then
	echo "$USAGE";
    exit 1;
fi

mvn install:install-file -Dfile=${1}.jar -DpomFile=${1}.pom -Dsources=${1}-sources.jar