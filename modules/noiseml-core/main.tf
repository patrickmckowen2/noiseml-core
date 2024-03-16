
locals {
  #project_prefix   = var.environment != "prod" ? "${var.project_prefix}_${var.environment}" : var.project_prefix
  #project_prefix  = "${var.project_prefix}_${var.environment}"
  timestamp        = formatdate("YYMMDDhhmmss", timestamp())
  #output_table     = var.environment != "prod" ? "${var.output_table}_${var.environment}" : var.output_table
  #config = yamldecode(file("${path.module}/config.yaml"))
}

# Best reference
# https://shapash-demo.ossbymaif.fr/
# https://github.com/salesforce/OmniXAI

