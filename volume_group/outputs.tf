output "id" {
  description = "The OCID for the volume group."
  value       = oci_core_volume_group.this.id
}

output "volume_group_replicas" {
  description = "The list of volume group replicas of this volume group."
  value       = oci_core_volume_group.this.volume_group_replicas
}

output "volume_ids" {
  description = "OCIDs for the current volumes in this volume group."
  value       = oci_core_volume_group.this.volume_ids
}
