
terraform {
  backend "gcs" {
    bucket = "noiseml-core-dev-tfstate"
    prefix = "noiseml/core/env/dev"
  }
}
