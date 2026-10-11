output "integrations_clients_id" {
  description = "Map of id values across all integrations_clients, keyed the same as var.integrations_clients except keys with no id are omitted"
  value       = { for k, v in google_integrations_client.integrations_clients : k => v.id if v.id != null && length(v.id) > 0 }
}
output "integrations_clients_cloud_kms_config" {
  description = "Map of cloud_kms_config values across all integrations_clients, keyed the same as var.integrations_clients except keys with no cloud_kms_config are omitted"
  value       = { for k, v in google_integrations_client.integrations_clients : k => one(v.cloud_kms_config) if v.cloud_kms_config != null && length(v.cloud_kms_config) > 0 }
}
output "integrations_clients_create_sample_integrations" {
  description = "Map of create_sample_integrations values across all integrations_clients, keyed the same as var.integrations_clients except keys with no create_sample_integrations are omitted"
  value       = { for k, v in google_integrations_client.integrations_clients : k => v.create_sample_integrations if v.create_sample_integrations != null }
}
output "integrations_clients_deletion_policy" {
  description = "Map of deletion_policy values across all integrations_clients, keyed the same as var.integrations_clients except keys with no deletion_policy are omitted"
  value       = { for k, v in google_integrations_client.integrations_clients : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "integrations_clients_location" {
  description = "Map of location values across all integrations_clients, keyed the same as var.integrations_clients except keys with no location are omitted"
  value       = { for k, v in google_integrations_client.integrations_clients : k => v.location if v.location != null && length(v.location) > 0 }
}
output "integrations_clients_project" {
  description = "Map of project values across all integrations_clients, keyed the same as var.integrations_clients except keys with no project are omitted"
  value       = { for k, v in google_integrations_client.integrations_clients : k => v.project if v.project != null && length(v.project) > 0 }
}

