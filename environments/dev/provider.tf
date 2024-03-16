provider "google" {
  project = "${var.project_id}"
  #access_token = var.access_token
  #region  = "${var.region}"
  #zone    = "${var.region}-a"
}
# provider "docker" {
#   version = "~> 1.2.0"
#   alias   = "test"
#   source  = "kreuzwerker/docker"
#   #version = "3.0.2"
#   #host = "ssh://root@localhost:32822"
# }

terraform {
  required_providers {
    # We recommend pinning to the specific version of the Docker Provider you're using
    # since new versions are released frequently
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.2"
    }
  }
}