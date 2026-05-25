output "id" {
  description = "The OCID of the volume."
  value       = oci_core_volume.this.id
}

output "auto_tuned_vpus_per_gb" {
  description = "The number of Volume Performance Units per GB that this volume is effectively tuned to."
  value       = oci_core_volume.this.auto_tuned_vpus_per_gb
}

output "autotune_policies" {
  description = "The list of autotune policies enabled for this volume."
  value       = oci_core_volume.this.autotune_policies
}

output "availability_domain" {
  description = "The availability domain of the volume.  Example: `Uocm:PHX-AD-1`"
  value       = oci_core_volume.this.availability_domain
}

output "block_volume_replicas" {
  description = "The list of block volume replicas of this volume."
  value       = oci_core_volume.this.block_volume_replicas
}

output "cluster_placement_group_id" {
  description = "The clusterPlacementGroup Id of the volume for volume placement."
  value       = oci_core_volume.this.cluster_placement_group_id
}

output "compartment_id" {
  description = "The OCID of the compartment that contains the volume."
  value       = oci_core_volume.this.compartment_id
}

output "defined_tags" {
  description = "Defined tags for this resource. Each key is predefined and scoped to a namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm).  Example: `{\"Operations.CostCenter\": \"42\"}`"
  value       = oci_core_volume.this.defined_tags
}

output "display_name" {
  description = "A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  value       = oci_core_volume.this.display_name
}

output "freeform_tags" {
  description = "Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm).  Example: `{\"Department\": \"Finance\"}`"
  value       = oci_core_volume.this.freeform_tags
}

output "is_hydrated" {
  description = "Specifies whether the cloned volume's data has finished copying from the source volume or backup."
  value       = oci_core_volume.this.is_hydrated
}

output "is_reservations_enabled" {
  description = "Reservations-enabled is a boolean field that allows to enable PR (Persistent Reservation) on a volume."
  value       = oci_core_volume.this.is_reservations_enabled
}

output "kms_key_id" {
  description = "The OCID of the Vault service key which is the master encryption key for the volume."
  value       = oci_core_volume.this.kms_key_id
}

output "size_in_gbs" {
  description = "The size of the volume in GBs."
  value       = oci_core_volume.this.size_in_gbs
}

output "source_details" {
  description = "Specifies the volume source details for a new Block volume."
  value       = oci_core_volume.this.source_details
}

output "state" {
  description = "The current state of a volume."
  value       = oci_core_volume.this.state
}

output "system_tags" {
  description = "System tags for this resource. Each key is predefined and scoped to a namespace."
  value       = oci_core_volume.this.system_tags
}

output "time_created" {
  description = "The date and time the volume was created. Format defined by [RFC3339](https://tools.ietf.org/html/rfc3339)."
  value       = oci_core_volume.this.time_created
}

output "volume_group_id" {
  description = "The OCID of the source volume group."
  value       = oci_core_volume.this.volume_group_id
}

output "vpus_per_gb" {
  description = "The number of volume performance units (VPUs) that will be applied to this volume per GB, representing the Block Volume service's elastic performance options."
  value       = oci_core_volume.this.vpus_per_gb
}
