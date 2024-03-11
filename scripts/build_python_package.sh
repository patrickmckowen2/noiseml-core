#!/bin/bash

package="${1:-demo}"
path_to_packages="${2:-packages/python}"
package_path="${path_to_packages}/${package}"

export GIT_PATH=`pwd`

# Change into the directory
cd "${package_path}"

# Remote old builds if exists
rm -rf dist

# build package
python3 \
  setup.py \
  sdist \
  --formats=gztar

# cd back to wherever you were when running this script
cd "$OLDPWD"