resource "google_integrations_client" "integrations_clients" {
  for_each = var.integrations_clients

  location                   = each.value.location
  create_sample_integrations = each.value.create_sample_integrations
  deletion_policy            = each.value.deletion_policy
  project                    = each.value.project

  dynamic "cloud_kms_config" {
    for_each = each.value.cloud_kms_config != null ? [each.value.cloud_kms_config] : []
    content {
      key            = cloud_kms_config.value.key
      key_version    = cloud_kms_config.value.key_version
      kms_location   = cloud_kms_config.value.kms_location
      kms_project_id = cloud_kms_config.value.kms_project_id
      kms_ring       = cloud_kms_config.value.kms_ring
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
    }
  }
}

