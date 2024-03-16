
resource "google_bigquery_dataset" "output" {
  project                    = var.gcp_project_id
  dataset_id                 = var.output_dataset
  friendly_name              = "Landing dataset for Apple Datalake"
  description                = "Landing dataset for Apple Datalake"
  location                   = "US"
  delete_contents_on_destroy = true

  labels = {
    data_source = var.project_prefix
  }
}

resource "google_bigquery_table" "output" {
  dataset_id          = google_bigquery_dataset.output.dataset_id
  table_id            = var.output_table
  project             = var.gcp_project_id
  deletion_protection = false

  labels = {
    data_source = "sample_app"
  }

  time_partitioning {
    type = "DAY"
  }

  schema = file("schemas/output_table_schema.json")
}

# transfer
```hcl
resource "google_bigquery_data_transfer_config" "sample_app_table" {
  project        = var.gcp_project_id
  display_name   = "Apple Ads Ingestion"
  location       = "US"
  data_source_id = "google_cloud_storage"
  schedule       = "every day 11:00"

  service_account_name   = google_service_account.sa-appleads.email
  destination_dataset_id = google_bigquery_dataset.output.dataset_id

  params = {
    "data_path_template" : "gs://${google_storage_bucket.output.name}/*.csv"
    #"data_path_template" : "gs://apple_ads_ingest_output/*"
    "destination_table_name_template" : google_bigquery_table.output.table_id
    "file_format" : "CSV"
    "skip_leading_rows" : "1"
    "delete_source_files" : "true"
  }

  depends_on = [
    google_bigquery_dataset.output,
  ]
}
```