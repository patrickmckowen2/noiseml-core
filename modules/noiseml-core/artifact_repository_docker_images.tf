resource "google_artifact_registry_repository" "docker_images" {
  description   = "Main repository for docker images"
  format        = "DOCKER"
  location      = "${var.region}"
  project       = "${var.project_id}"
  repository_id = "docker-images"
}