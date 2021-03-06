#!/bin/bash

set -e

source common.sh

TESTS+=" test-init.sh"
TESTS+=" test-import.sh"
TESTS+=" test-sync.sh"
TESTS+=" test-repro-code.sh"

for t in $TESTS; do
	rm -rf $TEST_REPO
	dvc_header "$t"
	./$t
done

rm -rf $TEST_REPO
