
locals {
  env = "dev"
}

provider "google" {
  project = "${var.project}"
}

resource "google_pubsub_topic" "noiseml-core-alerts-main-topic-${local.env}" {
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
