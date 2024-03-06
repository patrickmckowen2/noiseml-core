resource "google_pubsub_topic" "noiseml-core-alerts-main-topic" {
  name = "noiseml-core-alerts-main-topic-${var.environment}"
  labels = {
    business_concept = "alerting"
  }
  message_retention_duration = "86600s"
}
