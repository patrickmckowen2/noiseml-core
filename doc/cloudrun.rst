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


#	echo ${image_name_d}
#	gcloud run deploy ${image_name_d} \
#		--image=${image_uri} \
#		--region=${REGION} \
#		--port=${public_port} \
#		--allow-unauthenticated


#https://cloud.google.com/artifact-registry/docs/docker/manage-images

docker pull \
    us-east1-docker.pkg.dev/noiseml-core-dev/docker-images/cloud_run_demo:0.1.0

gcloud artifacts files list \
    --project=noiseml-core-dev \
    --repository=docker-images \
    --location=us-east1

gcloud artifacts files list \
    --project=noiseml-core-dev \
    --repository=docker-images \
    --location=us-east1

# To list files for all versions of a specific container image:

gcloud artifacts files list \
    --project=noiseml-core-dev \
    --repository=docker-images \
    --location=us-east1 \
    --package=cloud_run_demo



# To list files for a specific container image version:

gcloud artifacts files list \
    --project=noiseml-core-dev \
    --repository=docker-images \
    --location=us-east1 \
    --package=cloud_run_demo \
    --tag=0.1.0


# To list files for a specific tag:

gcloud artifacts files list \
    --project=noiseml-core-dev \
    --repository=docker-images \
    --location=us-east1 \
    --package=cloud_run_demo \
    --tag=0.1.0

gcloud artifacts files list \
    --project=noiseml-core-dev \
    --repository=python-packages \
    --location=us-east1 \
    --package=demo \
    --tag=0.1.0