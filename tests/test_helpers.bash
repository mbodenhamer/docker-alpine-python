# -*- shell-script -*-
TEST_FILE=$(basename $BATS_TEST_FILENAME .bats)
TEST_DIR=$(dirname $BATS_TEST_FILENAME)

function launch {
    docker run --rm -it -v /tmp:/tmp -v `pwd`:/app mbodenhamer/alpine-python:latest "$@"
}