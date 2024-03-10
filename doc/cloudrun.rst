https://github.com/GoogleCloudPlatform/cloud-run-microservice-template-python
https://cloud.google.com/run/docs/deploying#terraform
https://github.com/GoogleCloudPlatform/opentelemetry-cloud-run/tree/main
https://cloud.google.com/run/docs/logging


=====
Setup
=====

.. code-block:: sh
   :caption: Authenticate with Docker Artifact Registry 

   gcloud auth configure-docker \
     us-east1-docker.pkg.dev

==============
Deploy Scripts
==============

* scripts/build_docker_image.sh
* scripts/push_docker_image.sh
* scripts/deploy_cloud_run_service.sh
* scripts/full_cloud_run_service.sh

