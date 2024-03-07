variable "project_id" {}
variable "environment" {}
variable "region" {}
variable "zone" {}


variable "gcp_service_list" {
  description ="The list of apis necessary for the module"
  type = list(string)
  default = [
    "bigquery.googleapis.com",
    "billingbudgets.googleapis.com",
    "cloudbilling.googleapis.com",
    "cloudresourcemanager.googleapis.com",
    "compute.googleapis.com",
    "containerregistry.googleapis.com",
    "iam.googleapis.com",
    "iamcredentials.googleapis.com",
    "logging.googleapis.com",
    "monitoring.googleapis.com",
    "pubsub.googleapis.com",
        "secretmanager.googleapis.com",
        "serviceusage.googleapis.com",
        "storage-api.googleapis.com",
        "sts.googleapis.com",
        "vpcaccess.googleapis.com",
        "run.googleapis.com",
        "redis.googleapis.com",
        "cloudbuild.googleapis.com",
        "apigateway.googleapis.com",
        "servicecontrol.googleapis.com",
        "servicemanagement.googleapis.com",
        "dns.googleapis.com",
        "iap.googleapis.com",
        "cloudfunctions.googleapis.com",
        "analytics.googleapis.com",
        "mobilecrashreporting.googleapis.com",
        "bigqueryreservation.googleapis.com",
        "servicenetworking.googleapis.com",
        "datafusion.googleapis.com",
        "cloudscheduler.googleapis.com",
        "dataflow.googleapis.com",
        "bigquerystorage.googleapis.com",
        "bigqueryconnection.googleapis.com",
        "datacatalog.googleapis.com",
        "cloudlatencytest.googleapis.com",
        "composer.googleapis.com",
        "dlp.googleapis.com",
        "workflows.googleapis.com",
        "storagetransfer.googleapis.com",
        "cloudkms.googleapis.com",
        "cloudtasks.googleapis.com",
        "bigquerydatatransfer.googleapis.com",
        "deploymentmanager.googleapis.com",
        "dataproc.googleapis.com",
        "analyticshub.googleapis.com",
        "displayvideo.googleapis.com",
        "doubleclickbidmanager.googleapis.com",
        "googleads.googleapis.com",
        "analyticsreporting.googleapis.com",
        "analyticsdata.googleapis.com",
        "gmail.googleapis.com",
        "memcache.googleapis.com",
        "eventarc.googleapis.com",
        "datalineage.googleapis.com",
        "dataform.googleapis.com",

  ]
}