#!/bin/bash

# you'll only need to pass package and possibly project
package="${1:-demo}"
project_id="${2:-'noiseml-core-dev'}"
path_to_packages="${3:-packages/python}"
repository="${4:-'python-packages'}"
region="${5:-'us-east1'}"

# Don't change 
package_path="${path_to_packages}/${package}"


cd "${package_path}"

python3 \
  -m twine \
  upload \
  --repository-url "https://${region}-python.pkg.dev/${project_id}/${repository}/" \
  'dist/*'

# cd back to wherever you were when running this script
cd "$OLDPWD"