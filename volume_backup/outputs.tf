output "id" {
  description = "The OCID of the volume backup."
  value       = oci_core_volume_backup.this.id
}

output "compartment_id" {
  description = "The OCID of the compartment that contains the volume backup."
  value       = oci_core_volume_backup.this.compartment_id
}

output "defined_tags" {
  description = "Defined tags for this resource. Each key is predefined and scoped to a namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm)."
  value       = oci_core_volume_backup.this.defined_tags
}

output "display_name" {
  description = "A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  value       = oci_core_volume_backup.this.display_name
}

output "expiration_time" {
  description = "The date and time the volume backup will expire and be automatically deleted."
  value       = oci_core_volume_backup.this.expiration_time
}

output "freeform_tags" {
  description = "Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm)."
  value       = oci_core_volume_backup.this.freeform_tags
}

output "kms_key_id" {
  description = "The OCID of the Vault service key which is the master encryption key for the volume backup."
  value       = oci_core_volume_backup.this.kms_key_id
}

output "size_in_gbs" {
  description = "The size of the volume backup, in GBs."
  value       = oci_core_volume_backup.this.size_in_gbs
}

output "source_type" {
  description = "Specifies whether the volume backup was created manually, or via scheduled backup policy."
  value       = oci_core_volume_backup.this.source_type
}

output "source_volume_backup_id" {
  description = "The OCID of the source volume backup."
  value       = oci_core_volume_backup.this.source_volume_backup_id
}

output "state" {
  description = "The current state of a volume backup."
  value       = oci_core_volume_backup.this.state
}

output "system_tags" {
  description = "System tags for this resource. Each key is predefined and scoped to a namespace."
  value       = oci_core_volume_backup.this.system_tags
}

output "time_created" {
  description = "The date and time the volume backup was created. This is the time the actual point-in-time image of the volume data was taken. Format defined by [RFC3339](https://tools.ietf.org/html/rfc3339)."
  value       = oci_core_volume_backup.this.time_created
}

output "time_request_received" {
  description = "The date and time the request to create the volume backup was received. Format defined by [RFC3339](https://tools.ietf.org/html/rfc3339)."
  value       = oci_core_volume_backup.this.time_request_received
}

output "type" {
  description = "The type of backup."
  value       = oci_core_volume_backup.this.type
}

output "unique_size_in_gbs" {
  description = "The size used by the backup, in GBs."
  value       = oci_core_volume_backup.this.unique_size_in_gbs
}

output "volume_id" {
  description = "The OCID of the volume that needs to be backed up."
  value       = oci_core_volume_backup.this.volume_id
}
