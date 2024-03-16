resource "google_data_catalog_entry" "demo_fileset_entry1" {
  entry_group = google_data_catalog_entry_group.demo_entry_group1.id
  entry_id = "demo_fileset1"
  type = "FILESET"
  gcs_fileset_spec {
    file_patterns = ["gs://data_catalog_demo_bucket1/*.csv"]
  }
}

resource "google_data_catalog_entry_group" "demo_entry_group1" {
  entry_group_id = "demo_group1"
}


resource "google_data_catalog_entry" "demo_fileset_entry2" {
  entry_group = google_data_catalog_entry_group.demo_entry_group2.id
  entry_id = "demo_fileset2"
  type = "FILESET"
  gcs_fileset_spec {
    file_patterns = ["gs://data_catalog_demo_bucket2/*.csv"]
  }
}

resource "google_data_catalog_entry_group" "demo_entry_group2" {
  entry_group_id = "demo_group2"
}