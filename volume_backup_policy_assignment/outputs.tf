output "id" {
  description = "The OCID of the volume backup policy assignment."
  value       = oci_core_volume_backup_policy_assignment.this.id
}

output "asset_id" {
  description = "The OCID of the volume or volume group the policy has been assigned to."
  value       = oci_core_volume_backup_policy_assignment.this.asset_id
}

output "policy_id" {
  description = "The OCID of the volume backup policy that has been assigned to the volume or volume group."
  value       = oci_core_volume_backup_policy_assignment.this.policy_id
}

output "time_created" {
  description = "The date and time the volume backup policy was assigned to the volume. The format is defined by [RFC3339](https://tools.ietf.org/html/rfc3339)."
  value       = oci_core_volume_backup_policy_assignment.this.time_created
}

output "xrc_kms_key_id" {
  description = "The OCID of the Vault service key which is the master encryption key for the block / boot volume cross region backups, which will be used in the destination region to encrypt the backup's encryption keys. For more information about the Vault service and encryption keys, see [Overview of Vault service](https://docs.cloud.oracle.com/iaas/Content/KeyManagement/Concepts/keyoverview.htm) and [Using Keys](https://docs.cloud.oracle.com/iaas/Content/KeyManagement/Tasks/usingkeys.htm)."
  value       = oci_core_volume_backup_policy_assignment.this.xrc_kms_key_id
}
