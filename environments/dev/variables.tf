variable "project_id" {}
variable "environment" {}
variable "region" {}
variable "zone" {}

variable build_image_name{
    default="cloud_builder_image"
}

variable build_image_version{
    default="0.1.0"
    description="image of the "
}