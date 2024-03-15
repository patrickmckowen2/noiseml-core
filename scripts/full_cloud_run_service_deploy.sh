

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
domain_base="${10:-noiseml.com}"

# Don't change
image_tag=$package:$version
image_uri_base="${region}-docker.pkg.dev/${project_id}/${image_repo}"
image_uri="${image_uri_base}/${image_tag}"

gcloud artifacts repositories create docker-images --repository-format=docker \
    --location=$region --description="Docker repository"

# build
docker build ./cloudrun/$package -t "${image_tag}"
docker tag $image_tag $image_uri

#push
docker push $image_uri

echo
echo

gcloud artifacts files list \
  --project=$project_id \
  --repository=$image_repo \
  --location=$region \
  --package=$package  \
  --tag=$version

gcloud run deploy ${image_name_d} \
  --image=${image_uri} \
  --region=${region} \
  --port=${public_port} \
  --allow-unauthenticated \
  --project=$project_id



gcloud run \
  services \
  describe \
  $package




  

# Don't change
image_tag=$package:$version
image_uri_base="${region}-docker.pkg.dev/${project_id}/${image_repo}"
image_uri="${image_uri_base}/${image_tag}"

environment=`cut -d - -f 3 <<< $project_id`
env_domain="${environment}.${domain_base}"


echo ******* User Verified Domains *********

gcloud domains list-user-verified


echo ******* Cloud Run Service Description *********

gcloud beta run \
  domain-mappings \
  describe \
  --domain $env_domain


echo ******* Create Domain Mapping *********

gcloud beta run domain-mappings create \
  --service $package \
  --domain $env_domain


echo ******* Cloud Run Service Description *********

gcloud run services \
  describe \
  ${package}

echo ******* Testing $domain *********

# Send request
curl \
  -H "Authorization: Bearer $(gcloud auth print-identity-token)" \
  $domain > env_domain_test_response.html

echo
echo

# Verfiy
# TODO Check what a bad message looks like and update
# while read line; do
#     if grep -q "FAILURE" <<< "$line"; then
#         echo "$line"
#         # TODO Add exception raising
#     fi
# done < env_domain_test_response.html

echo ******* Cloud Run Service Description *********