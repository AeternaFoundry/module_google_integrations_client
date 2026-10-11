variable "integrations_clients" {
  description = <<EOT
Map of integrations_clients, attributes below
Required:
    - location
Optional:
    - create_sample_integrations
    - deletion_policy
    - project
    - cloud_kms_config (block):
        - key (required)
        - key_version (optional)
        - kms_location (required)
        - kms_project_id (optional)
        - kms_ring (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
EOT

  type = map(object({
    location                   = string
    create_sample_integrations = optional(bool)
    deletion_policy            = optional(string)
    project                    = optional(string)
    cloud_kms_config = optional(object({
      key            = string
      key_version    = optional(string)
      kms_location   = string
      kms_project_id = optional(string)
      kms_ring       = string
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
    }))
  }))
}

