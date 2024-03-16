resource "google_service_account" "interactor_sa" {
  #project      = var.gcp_project_id
  account_id   = "dialogflow-demo-interactor"
  display_name = "Service account used to interact with chat service"
}

#resource "google_storage_bucket_iam_member" "interactor-sa-iam-storage-admin" {
#   bucket = google_storage_bucket.output.name
#   role   = "roles/storage.admin"
#   member = "serviceAccount:${google_service_account.interactor_sa.email}"
#   depends_on = [
#     google_service_account.interactor_sa
#   ]
# }

# resource "google_storage_bucket_iam_member" "interactor-sa-iam-transfer-agent" {
#  bucket = google_storage_bucket.output.name
#  role   = "roles/storagetransfer.transferAgent"
#   member = "serviceAccount:${google_service_account.interactor_sa.email}"
#  depends_on = [
#    google_service_account.interactor_sa
#  ]
# }

resource "google_project_iam_member" "interactor_sa_iam_service_account_user" {
  project = var.project_id
  role    = "roles/iam.serviceAccountUser"
  member = "serviceAccount:${google_service_account.interactor_sa.email}"
  depends_on = [
    google_service_account.interactor_sa
  ]
}

resource "google_project_iam_member" "interactor_sa_iam_bigquery_admin" {
  project = var.project_id
  role    = "roles/bigquery.admin"
  member = "serviceAccount:${google_service_account.interactor_sa.email}"
  depends_on = [
    google_service_account.interactor_sa
  ]
}
