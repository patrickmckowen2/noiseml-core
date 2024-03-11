resource "google_artifact_registry_repository" "python_packages" {
  description   = "Main repository for python packages"
  format        = "PYTHON"
  location      = "${var.region}"
  project       = "${var.project_id}"
  repository_id = "python-packages"
}