#!/usr/bin/env bash

# Check that we are in the root folder
if ! [[ -f "./scripts/build.sh" ]]; then
    (>&2 echo "Script must be run from the root folder, actual $(pwd)")
    exit 1
fi

# Check for node_modules folder
if ! [[ -d "./node_modules" ]]; then
    (>&2 echo "node_modules folder not found (did you run npm install?)")
    exit 1
fi

# Generate
./node_modules/@antora/cli/bin/antora generate site.yml --stacktrace
