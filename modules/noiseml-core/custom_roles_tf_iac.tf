# module "custom-roles" {
#   source = "terraform-google-modules/iam/google//modules/custom_role_iam"

#   target_level         = "project"
#   target_id            = "${var.project_id}"
#   role_id              = "tf.iac"
#   title                = "Terraform Infrastructure As Code"
#   description          = "Service account used for running terraform"
#   base_roles           = [
#     "roles/iam.serviceAccountAdmin"
#   ]
#   permissions          = [
#     "iam.roles.list",
#     "iam.roles.create",
#     "iam.roles.delete",
#     "iam.serviceAccounts.actAs",
#     "resourcemanager.projects.get",
#     "resourcemanager.projects.getIamPolicy",
#     "resourcemanager.projects.setIamPolicy",
#     "run.services.create",
#     "run.services.get",
#     "run.services.list",
#     "run.services.getIamPolicy",
#     "run.services.setIamPolicy",
#     "run.services.update",
#     "storage.buckets.create",
#     "storage.buckets.delete",
#     "storage.buckets.update",
#     "storage.buckets.get",
#     "storage.objects.create",
#     "storage.objects.delete",
#     "storage.objects.update",
#     "storage.objects.get",
#     "storage.objects.list",
#     "cloudfunctions.functions.create",
#     "cloudfunctions.functions.delete",
#     "cloudfunctions.functions.get",
#     "cloudfunctions.functions.getIamPolicy",
#     "cloudfunctions.functions.list",
#     "cloudfunctions.functions.sourceCodeSet",
#     "cloudfunctions.functions.update",
#     "cloudfunctions.operations.get",
#     "serviceusage.operations.get",
#     "serviceusage.services.disable",
#     "serviceusage.services.enable",
#     "serviceusage.services.get",
#     "serviceusage.services.list",
#     "iam.serviceAccountKeys.create",
#     "iam.serviceAccountKeys.delete",
#     "iam.serviceAccountKeys.list",
#     "iam.serviceAccountKeys.get",
#     "iam.serviceAccounts.create",
#     "iam.serviceAccounts.delete",
#     "iam.serviceAccounts.disable",
#     "iam.serviceAccounts.enable",
#     "iam.serviceAccounts.get",
#     "iam.serviceAccounts.getIamPolicy",
#     "iam.serviceAccounts.list",
#     "iam.serviceAccounts.setIamPolicy",
#     "iam.serviceAccounts.undelete",
#     "iam.serviceAccounts.update",
#     "secretmanager.secrets.create",
#     "secretmanager.secrets.delete",
#     "secretmanager.secrets.get",
#     "secretmanager.secrets.getIamPolicy",
#     "secretmanager.secrets.list",
#     "secretmanager.secrets.setIamPolicy",
#     "secretmanager.secrets.update",
#     "secretmanager.versions.add",
#     "secretmanager.versions.enable",
#     "secretmanager.versions.get",
#     "secretmanager.versions.access",
#     "iam.roles.create",
#     "iam.roles.delete",
#     "iam.roles.get",
#     "iam.roles.list",
#     "iam.roles.undelete",
#     "iam.roles.update",
#     "compute.regionOperations.get",
#     "compute.globalOperations.get",
#     "bigquery.datasets.create",
#     "bigquery.datasets.get",
#     "bigquery.datasets.delete",
#     "bigquery.datasets.update",
#     "bigquery.tables.delete",
#     "bigquery.tables.create",
#     "bigquery.tables.get",
#     "bigquery.tables.getIamPolicy",
#     "bigquery.tables.list",
#     "bigquery.tables.setIamPolicy",
#     "bigquery.tables.update",
#     "bigquery.jobs.delete",
#     "bigquery.jobs.get",
#     "bigquery.jobs.list",
#     "bigquery.jobs.listAll",
#     "bigquery.jobs.update",
#     "bigquery.jobs.create",
#     "datacatalog.tagTemplates.create",
#     "datacatalog.tagTemplates.get",
#     "datacatalog.tagTemplates.delete",
#     "datacatalog.tagTemplates.get",
#     "datacatalog.tagTemplates.update",
#     "datacatalog.entryGroups.create",
#     "datacatalog.entryGroups.list",
#     "datacatalog.entryGroups.get",
#     "datacatalog.entryGroups.delete",
#     "datacatalog.entryGroups.update",
#     "datacatalog.entries.create",
#     "datacatalog.entries.list",
#     "datacatalog.entries.get",
#     "datacatalog.entries.delete",
#     "datacatalog.entries.update",
#     "composer.environments.create",
#     "composer.environments.get",
#     "composer.environments.list",
#     "composer.environments.delete",
#     "composer.environments.update",
#     "logging.sinks.create",
#     "logging.sinks.get",
#     "logging.sinks.list",
#     "logging.sinks.update",
#     "logging.sinks.delete",
#     "cloudkms.keyRings.create",
#     "cloudkms.keyRings.get",
#     "cloudkms.keyRings.list",
#     "cloudkms.keyRings.getIamPolicy",
#     "cloudkms.keyRings.setIamPolicy",
#     "cloudkms.cryptoKeys.create",
#     "cloudkms.cryptoKeys.get",
#     "cloudkms.cryptoKeys.list",
#     "cloudkms.cryptoKeys.update",
#     "cloudkms.cryptoKeys.getIamPolicy",
#     "cloudkms.cryptoKeys.setIamPolicy",
#     "cloudkms.cryptoKeyVersions.destroy",
#     "monitoring.notificationChannels.create",
#     "monitoring.notificationChannels.delete",
#     "monitoring.notificationChannels.get",
#     "monitoring.notificationChannels.list",
#     "monitoring.notificationChannels.update",
#     "monitoring.alertPolicies.create",
#     "monitoring.alertPolicies.delete",
#     "monitoring.alertPolicies.get",
#     "monitoring.alertPolicies.list",
#     "monitoring.alertPolicies.update",
#     "cloudscheduler.jobs.create",
#     "cloudscheduler.jobs.update",
#     "cloudscheduler.jobs.delete",
#     "cloudscheduler.jobs.get",
#     "compute.subnetworks.get",
#     "compute.subnetworks.update",
#     "compute.subnetworks.create",
#     "compute.routers.create",
#     "compute.routers.get",
#     "compute.networks.update",
#     "compute.networks.updatePolicy",
#     "compute.instanceGroupManagers.create",
#     "compute.instanceGroupManagers.delete",
#     "compute.instanceGroupManagers.get",
#     "compute.instanceGroupManagers.list",
#     "compute.instanceGroupManagers.update",
#     "compute.instanceGroupManagers.use",
#     "compute.instanceTemplates.create",
#     "compute.instanceTemplates.delete",
#     "compute.instanceTemplates.get",
#     "compute.instanceTemplates.getIamPolicy",
#     "compute.instanceTemplates.list",
#     "compute.instanceTemplates.useReadOnly",
#     "compute.instances.create",
#     "compute.disks.create",
#     "compute.disks.setLabels",
#     "compute.instances.setMetadata",
#     "compute.instances.setLabels",
#     "compute.healthChecks.create",
#     "compute.healthChecks.delete",
#     "compute.healthChecks.get",
#     "compute.healthChecks.list",
#     "compute.healthChecks.update",
#     "compute.healthChecks.use",
#     "compute.healthChecks.useReadOnly",
#     "compute.instances.setTags",
#     "cloudtasks.queues.list",
#     "cloudtasks.queues.get",
#     "cloudtasks.queues.create",
#     "cloudtasks.queues.update",
#     "cloudtasks.queues.delete",
#     "cloudtasks.tasks.list",
#     "cloudtasks.tasks.get",
#     "cloudtasks.tasks.create",
#     "cloudtasks.tasks.delete",
#     "cloudtasks.tasks.run",
#     "vpcaccess.connectors.create",
#     "vpcaccess.connectors.delete",
#     "vpcaccess.connectors.get",
#     "vpcaccess.connectors.list",
#     "vpcaccess.connectors.use",
#     "vpcaccess.locations.list",
#     "vpcaccess.operations.get",
#     "vpcaccess.operations.list",
#     "storagetransfer.projects.getServiceAccount",
#     "storagetransfer.jobs.create",
#     "storagetransfer.jobs.get",
#     "storagetransfer.jobs.list",
#     "storagetransfer.jobs.update",
#     "storagetransfer.jobs.delete",
#     "compute.firewalls.create",
#     "compute.firewalls.delete",
#     "compute.firewalls.get",
#     "compute.firewalls.list",
#     "compute.firewalls.update",
#     "bigtable.clusters.create",
#     "bigtable.clusters.delete",
#     "bigtable.clusters.get",
#     "bigtable.clusters.list",
#     "bigtable.clusters.update",
#     "bigtable.instances.create",
#     "bigtable.instances.delete",
#     "bigtable.instances.get",
#     "bigtable.instances.list",
#     "bigtable.instances.update",
#     "bigtable.tables.create",
#     "bigtable.tables.delete",
#     "bigtable.tables.get",
#     "bigtable.tables.list",
#     "bigtable.tables.update",
#   ]
#   excluded_permissions = [
#     "iam.serviceAccounts.setIamPolicy"
#   ]
#   members              = [
#     #"serviceAccount:member01@${var.project_id}.iam.gserviceaccount.com", 
#     #"serviceAccount:member02@${var.target_id}.iam.gserviceaccount.com"
#   ]
# }