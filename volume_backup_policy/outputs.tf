output "id" {
  description = "The OCID of the volume backup policy."
  value       = oci_core_volume_backup_policy.this.id
}

output "compartment_id" {
  description = "The OCID of the compartment that contains the volume backup."
  value       = oci_core_volume_backup_policy.this.compartment_id
}

output "defined_tags" {
  description = "Defined tags for this resource. Each key is predefined and scoped to a namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm).  Example: `{\"Operations.CostCenter\": \"42\"}`"
  value       = oci_core_volume_backup_policy.this.defined_tags
}

output "destination_region" {
  description = "The paired destination region for copying scheduled backups to. Example `us-ashburn-1`. See [Region Pairs](https://docs.cloud.oracle.com/iaas/Content/Block/Tasks/schedulingvolumebackups.htm#RegionPairs) for details about paired regions."
  value       = oci_core_volume_backup_policy.this.destination_region
}

output "display_name" {
  description = "A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  value       = oci_core_volume_backup_policy.this.display_name
}

output "freeform_tags" {
  description = "Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm).  Example: `{\"Department\": \"Finance\"}`"
  value       = oci_core_volume_backup_policy.this.freeform_tags
}

output "schedules" {
  description = "The collection of schedules that this policy will apply."
  value       = oci_core_volume_backup_policy.this.schedules
}

output "time_created" {
  description = "The date and time the volume backup policy was created. Format defined by [RFC3339](https://tools.ietf.org/html/rfc3339)."
  value       = oci_core_volume_backup_policy.this.time_created
}
