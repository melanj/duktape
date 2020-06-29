#!/bin/bash

set -e

/work/prepare_repo.sh

source emsdk/emsdk_env.sh

cd duktape
make clean dist-site
ls -l dist/
zip -r /tmp/out.zip dist/
cat /tmp/out.zip
