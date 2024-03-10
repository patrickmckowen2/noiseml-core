

# Run without any arguments to deploy demo
package="${1:-demo}"
project_id="${2:-noiseml-core-dev}"
path_to_packages="${3:-packages/python}"
region="${4:-us-east1}"
container_name="${5:-$package}"
version="${6:-0.1.0}"
image_repo="${7:-docker-images}"
image_name="${8:-${package/_/-}}"  
public_port="${9:-80}"

# Don't change
image_tag=$package:$version
image_uri_base="${region}-docker.pkg.dev/${project_id}/${image_repo}"
image_uri="${image_uri_base}/${image_tag}"

# build
docker build ./cloudrun/$package -t "${image_tag}"
docker tag $image_tag $image_uri
#
##push
#docker push $image_uri
#
#echo
#echo
#
#gcloud artifacts files list \
#  --project=$project_id \
#  --repository=$image_repo \
#  --location=$region \
#  --package=$package  \
#  --tag=$version
#
#
#gcloud run deploy ${image_name_d} \
#	--image=${image_uri} \
#	--region=${region} \
#	--port=${public_port} \
#	--allow-unauthenticated \
#  --project=$project_id
