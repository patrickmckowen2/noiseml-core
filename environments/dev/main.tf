
# locals {
#   # Use this when working on standard (cross tool) yaml config
#   config = yamldecode(file("${path.module}/config.yaml"))
# }


# COMMON

module "noiseml-core" {
  source  = "../../modules/noiseml-core"
  project_id = "${var.project_id}"
  environment = "${var.environment}"
  region = "${var.region}"
  zone = "${var.zone}"
}

# DEMOS

module "dialogflow_agent_demo" {
  source  = "../../modules/dialogflow_agent_demo"
  project_id = "${var.project_id}"
  region = "${var.region}"
  depends_on = [module.noiseml-core]
}

