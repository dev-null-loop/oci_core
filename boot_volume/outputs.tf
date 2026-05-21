output "id" {
  description = "The boot volume's Oracle ID (OCID)."
  value       = oci_core_boot_volume.this.id
}

output "availability_domain" {
  description = "The availability domain of the boot volume.  Example: `Uocm:PHX-AD-1`"
  value       = oci_core_boot_volume.this.availability_domain
}

output "auto_tuned_vpus_per_gb" {
  description = "The number of Volume Performance Units per GB that this boot volume is effectively tuned to."
  value       = oci_core_boot_volume.this.auto_tuned_vpus_per_gb
}

output "autotune_policies" {
  description = "The list of autotune policies enabled for this volume."
  value       = oci_core_boot_volume.this.autotune_policies
}

output "boot_volume_replicas" {
  description = "The list of boot volume replicas of this boot volume"
  value       = oci_core_boot_volume.this.boot_volume_replicas
}

output "cluster_placement_group_id" {
  description = "The clusterPlacementGroup Id of the volume for volume placement."
  value       = oci_core_boot_volume.this.cluster_placement_group_id
}

output "compartment_id" {
  description = "The OCID of the compartment that contains the boot volume."
  value       = oci_core_boot_volume.this.compartment_id
}

output "display_name" {
  description = "A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  value       = oci_core_boot_volume.this.display_name
}

output "image_id" {
  description = "The image OCID used to create the boot volume."
  value       = oci_core_boot_volume.this.image_id
}

output "is_hydrated" {
  description = "Specifies whether the boot volume's data has finished copying from the source boot volume or boot volume backup."
  value       = oci_core_boot_volume.this.is_hydrated
}

output "kms_key_id" {
  description = "The OCID of the Vault service master encryption key assigned to the boot volume."
  value       = oci_core_boot_volume.this.kms_key_id
}

output "size_in_gbs" {
  description = "The size of the boot volume in GBs."
  value       = oci_core_boot_volume.this.size_in_gbs
}

output "state" {
  description = "The current state of a boot volume."
  value       = oci_core_boot_volume.this.state
}

output "time_created" {
  description = "The date and time the boot volume was created. Format defined by [RFC3339](https://tools.ietf.org/html/rfc3339)."
  value       = oci_core_boot_volume.this.time_created
}

output "volume_group_id" {
  description = "The OCID of the source volume group."
  value       = oci_core_boot_volume.this.volume_group_id
}

output "vpus_per_gb" {
  description = "The number of volume performance units (VPUs) that will be applied to this boot volume per GB, representing the Block Volume service's elastic performance options."
  value       = oci_core_boot_volume.this.vpus_per_gb
}
