resource "google_dialogflow_cx_agent" "agent" {
  display_name          = "shirt-order-agent"
  location              = var.region
  default_language_code = "en"
  time_zone             = "America/Chicago"
  depends_on            = [
    google_project_service.gcp_services
  ]
}
