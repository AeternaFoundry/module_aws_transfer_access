output "transfer_accesses_id" {
  description = "Map of id values across all transfer_accesses, keyed the same as var.transfer_accesses"
  value       = { for k, v in aws_transfer_access.transfer_accesses : k => v.id if v.id != null && length(v.id) > 0 }
}
output "transfer_accesses_external_id" {
  description = "Map of external_id values across all transfer_accesses, keyed the same as var.transfer_accesses"
  value       = { for k, v in aws_transfer_access.transfer_accesses : k => v.external_id if v.external_id != null && length(v.external_id) > 0 }
}
output "transfer_accesses_home_directory" {
  description = "Map of home_directory values across all transfer_accesses, keyed the same as var.transfer_accesses"
  value       = { for k, v in aws_transfer_access.transfer_accesses : k => v.home_directory if v.home_directory != null && length(v.home_directory) > 0 }
}
output "transfer_accesses_home_directory_mappings" {
  description = "Map of home_directory_mappings values across all transfer_accesses, keyed the same as var.transfer_accesses"
  value       = { for k, v in aws_transfer_access.transfer_accesses : k => v.home_directory_mappings if v.home_directory_mappings != null && length(v.home_directory_mappings) > 0 }
}
output "transfer_accesses_home_directory_type" {
  description = "Map of home_directory_type values across all transfer_accesses, keyed the same as var.transfer_accesses"
  value       = { for k, v in aws_transfer_access.transfer_accesses : k => v.home_directory_type if v.home_directory_type != null && length(v.home_directory_type) > 0 }
}
output "transfer_accesses_policy" {
  description = "Map of policy values across all transfer_accesses, keyed the same as var.transfer_accesses"
  value       = { for k, v in aws_transfer_access.transfer_accesses : k => v.policy if v.policy != null && length(v.policy) > 0 }
}
output "transfer_accesses_posix_profile" {
  description = "Map of posix_profile values across all transfer_accesses, keyed the same as var.transfer_accesses"
  value       = { for k, v in aws_transfer_access.transfer_accesses : k => one(v.posix_profile) if v.posix_profile != null && length(v.posix_profile) > 0 }
}
output "transfer_accesses_region" {
  description = "Map of region values across all transfer_accesses, keyed the same as var.transfer_accesses"
  value       = { for k, v in aws_transfer_access.transfer_accesses : k => v.region if v.region != null && length(v.region) > 0 }
}
output "transfer_accesses_role" {
  description = "Map of role values across all transfer_accesses, keyed the same as var.transfer_accesses"
  value       = { for k, v in aws_transfer_access.transfer_accesses : k => v.role if v.role != null && length(v.role) > 0 }
}
output "transfer_accesses_server_id" {
  description = "Map of server_id values across all transfer_accesses, keyed the same as var.transfer_accesses"
  value       = { for k, v in aws_transfer_access.transfer_accesses : k => v.server_id if v.server_id != null && length(v.server_id) > 0 }
}

