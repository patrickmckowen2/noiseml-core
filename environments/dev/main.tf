
locals {
  env = "dev"
}

provider "google" {
  project = "${var.project}"

  #access_token = var.access_token
}

resource "google_pubsub_topic" "noiseml-core-alerts-main-topic" {
  name = "noiseml-core-alerts-main-topic-${local.env}"

  #labels = {
  #  foo = "bar"
  #}

  message_retention_duration = "86600s"
}

#module "vpc" {
#  source  = "../../modules/vpc"
#  project = "${var.project}"
#  env     = "${local.env}"
#}
#
#module "http_server" {
#  source  = "../../modules/http_server"
#  project = "${var.project}"
#  subnet  = "${module.vpc.subnet}"
#}
#
#module "firewall" {
#  source  = "../../modules/firewall"
#  project = "${var.project}"
#  subnet  = "${module.vpc.subnet}"
#}



#resource "google_project" "agent_project" {
#  project_id = "noiseml-core-${local.env}"
#  name = "noiseml-core-${local.env}"
#}


module "dialogflow_agent_demo" {
  source  = "../../modules/dialogflow_agent_demo"
}


