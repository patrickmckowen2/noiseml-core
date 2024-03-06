
#provider "google" {
#  project = "${var.project_id}"
#  #access_token = var.access_token
#  #region  = "${var.region}"
#  #zone    = "${var.region}-a"
#}

# DEMOS
module "dialogflow_agent_demo" {
  source  = "../../modules/dialogflow_agent_demo"
  project_id = "${var.project_id}"
  region = "${var.region}"
}

# COMMON
module "noiseml-core" {
  source  = "../../modules/noiseml-core"
  project_id = "${var.project_id}"
  environment = "${var.environment}"
  region = "${var.region}"
  zone = "${var.zone}"
}


