
terraform {
  backend "gcs" {
    bucket = "noiseml-core-stg-tfstate"
    prefix = "noiseml/core/env/stg"
  }
}
