variable "transfer_accesses" {
  description = <<EOT
Map of transfer_accesses, attributes below
Required:
    - external_id
    - server_id
Optional:
    - home_directory
    - home_directory_type
    - policy
    - region
    - role
    - home_directory_mappings (block):
        - entry (required)
        - target (required)
    - posix_profile (block):
        - gid (required)
        - secondary_gids (optional)
        - uid (required)
EOT

  type = map(object({
    external_id         = string
    server_id           = string
    home_directory      = optional(string)
    home_directory_type = optional(string)
    policy              = optional(string)
    region              = optional(string)
    role                = optional(string)
    home_directory_mappings = optional(list(object({
      entry  = string
      target = string
    })))
    posix_profile = optional(object({
      gid            = number
      secondary_gids = optional(set(number))
      uid            = number
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.transfer_accesses : (
        v.home_directory_mappings == null || (length(v.home_directory_mappings) <= 50)
      )
    ])
    error_message = "Each home_directory_mappings list must contain at most 50 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.transfer_accesses : (
        v.home_directory == null || (length(v.home_directory) >= 0 && length(v.home_directory) <= 1024)
      )
    ])
    error_message = "must be between 0 and 1024 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.transfer_accesses : (
        v.home_directory_mappings == null || alltrue([for item in v.home_directory_mappings : (length(item.entry) >= 0 && length(item.entry) <= 1024)])
      )
    ])
    error_message = "must be between 0 and 1024 characters"
  }
  # Note: 6 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

