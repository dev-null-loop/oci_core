output "id" {
  description = "The OCID of the volume group backup."
  value       = oci_core_volume_group_backup.this.id
}

output "compartment_id" {
  description = "The OCID of the compartment that contains the volume group backup."
  value       = oci_core_volume_group_backup.this.compartment_id
}

output "defined_tags" {
  description = "Defined tags for this resource. Each key is predefined and scoped to a namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm).  Example: `{\"Operations.CostCenter\": \"42\"}`"
  value       = oci_core_volume_group_backup.this.defined_tags
}

output "display_name" {
  description = "A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  value       = oci_core_volume_group_backup.this.display_name
}

output "expiration_time" {
  description = "The date and time the volume group backup will expire and be automatically deleted."
  value       = oci_core_volume_group_backup.this.expiration_time
}

output "freeform_tags" {
  description = "Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm).  Example: `{\"Department\": \"Finance\"}`"
  value       = oci_core_volume_group_backup.this.freeform_tags
}

output "size_in_gbs" {
  description = "The aggregate size of the volume group backup, in GBs."
  value       = oci_core_volume_group_backup.this.size_in_gbs
}

output "source_type" {
  description = "Specifies whether the volume group backup was created manually, or via scheduled backup policy."
  value       = oci_core_volume_group_backup.this.source_type
}

output "source_volume_group_backup_id" {
  description = "The OCID of the source volume group backup."
  value       = oci_core_volume_group_backup.this.source_volume_group_backup_id
}

output "state" {
  description = "The current state of a volume group backup."
  value       = oci_core_volume_group_backup.this.state
}

output "time_created" {
  description = "The date and time the volume group backup was created. This is the time the actual point-in-time image of the volume group data was taken. Format defined by [RFC3339](https://tools.ietf.org/html/rfc3339)."
  value       = oci_core_volume_group_backup.this.time_created
}

output "time_request_received" {
  description = "The date and time the request to create the volume group backup was received. Format defined by [RFC3339](https://tools.ietf.org/html/rfc3339)."
  value       = oci_core_volume_group_backup.this.time_request_received
}

output "type" {
  description = "The type of backup."
  value       = oci_core_volume_group_backup.this.type
}

output "unique_size_in_gbs" {
  description = "The aggregate size used by the volume group backup, in GBs."
  value       = oci_core_volume_group_backup.this.unique_size_in_gbs
}

output "volume_backup_ids" {
  description = "OCIDs for the volume backups in this volume group backup."
  value       = oci_core_volume_group_backup.this.volume_backup_ids
}

output "volume_group_id" {
  description = "The OCID of the source volume group."
  value       = oci_core_volume_group_backup.this.volume_group_id
}
