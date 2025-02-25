#! /bin/bash
# we don't set -eu here, as some of the binaries might be potentially be missing
# and that is fine, that means they are already removed.

for bin in youki integration_test runtimetest test.log; do
    if [ -f $bin ]; then
        rm ${1}/$bin
    fi
done

rm -rf runtimetest-target

cargo clean

exit 0 # unconditionally return zero
