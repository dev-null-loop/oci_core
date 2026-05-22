output "id" {
  description = "The OCID of the boot volume backup."
  value       = oci_core_boot_volume_backup.this.id
}

output "boot_volume_id" {
  description = "The OCID of the boot volume."
  value       = oci_core_boot_volume_backup.this.boot_volume_id
}

output "compartment_id" {
  description = "The OCID of the compartment that contains the boot volume backup."
  value       = oci_core_boot_volume_backup.this.compartment_id
}

output "display_name" {
  description = "A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  value       = oci_core_boot_volume_backup.this.display_name
}

output "expiration_time" {
  description = "The date and time the volume backup will expire and be automatically deleted."
  value       = oci_core_boot_volume_backup.this.expiration_time
}

output "image_id" {
  description = "The image OCID used to create the boot volume the backup is taken from."
  value       = oci_core_boot_volume_backup.this.image_id
}

output "kms_key_id" {
  description = "The OCID of the Vault service master encryption assigned to the boot volume backup."
  value       = oci_core_boot_volume_backup.this.kms_key_id
}

output "size_in_gbs" {
  description = "The size of the boot volume, in GBs."
  value       = oci_core_boot_volume_backup.this.size_in_gbs
}

output "source_boot_volume_backup_id" {
  description = "The OCID of the source boot volume backup."
  value       = oci_core_boot_volume_backup.this.source_boot_volume_backup_id
}

output "source_type" {
  description = "Specifies whether the backup was created manually, or via scheduled backup policy."
  value       = oci_core_boot_volume_backup.this.source_type
}

output "state" {
  description = "The current state of a boot volume backup."
  value       = oci_core_boot_volume_backup.this.state
}

output "system_tags" {
  description = "System tags for this resource. Each key is predefined and scoped to a namespace. Example: `{\"foo-namespace.bar-key\": \"value\"}`"
  value       = oci_core_boot_volume_backup.this.system_tags
}

output "time_created" {
  description = "The date and time the boot volume backup was created. This is the time the actual point-in-time image of the volume data was taken."
  value       = oci_core_boot_volume_backup.this.time_created
}

output "time_request_received" {
  description = "The date and time the request to create the boot volume backup was received."
  value       = oci_core_boot_volume_backup.this.time_request_received
}

output "type" {
  description = "The type of a volume backup. Supported values are 'FULL' or 'INCREMENTAL'."
  value       = oci_core_boot_volume_backup.this.type
}

output "unique_size_in_gbs" {
  description = "The size used by the backup, in GBs."
  value       = oci_core_boot_volume_backup.this.unique_size_in_gbs
}
