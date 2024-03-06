variable "project_id" {
  default = "noiseml-core-dev"
  type    = string
}

variable "region" {
  default = "us-east1"
  type    = string
}

variable "zone" {
  default = "us-east1-a"
  type    = string
}

variable "gcp_service_list" {
  description ="The list of apis necessary for the module"
  type = list(string)
  default = [
    "dialogflow.googleapis.com"
  ]
}


