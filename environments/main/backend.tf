
terraform {
  backend "gcs" {
    bucket = "noiseml-core-prd-tfstate"
    prefix = "noiseml/core/env/prd"
  }
}
