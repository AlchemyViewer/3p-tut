#!/usr/bin/env bash

# turn on verbose debugging output for logs.
exec 4>&1; export BASH_XTRACEFD=4; set -x
# make errors fatal
set -e
# bleat on references to undefined shell variables
set -u

# The tut package itself doesn't seem to have a version number anywhere other than 
# the original source directory name, which conflicts with our vendor branching convention; 
# So.. the original version has been preserved here and will be used to construct
# the version file for autobuild to read.
TUT_VERSION="2008-11-30"
echo "$TUT_VERSION" | sed 's/-/./g' > VERSION.txt

# this script should be executed from the build output directory (stage)
TUT_SOURCE_DIR="../tut"

mkdir -p include

# Just copy the headers.
cp -r "$TUT_SOURCE_DIR/tut" "./include/"

mkdir -p LICENSES
cp "../LICENSE.tut" LICENSES/tut.txt
