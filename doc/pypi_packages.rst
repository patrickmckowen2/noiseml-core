#!/bin/bash

rm -rf dist

python3 \
  packages/python/demo/setup.py \
  sdist \
  --formats=gztar


https://cloud.google.com/artifact-registry/docs/python/store-python
gcloud artifacts packages list --repository=quickstart-python-repo


gcloud artifacts versions list --package=PACKAGE


pip install --index-url https://us-central1-python.pkg.dev/PROJECT_ID/quickstart-python-repo/simple/ sampleproject


