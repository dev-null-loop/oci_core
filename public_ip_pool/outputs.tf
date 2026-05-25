output "id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the public IP pool."
  value       = oci_core_public_ip_pool.this.id
}

output "cidr_blocks" {
  description = "The CIDR blocks added to this pool. This could be all or a portion of a BYOIP CIDR block."
  value       = oci_core_public_ip_pool.this.cidr_blocks
}

output "compartment_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the compartment containing this pool."
  value       = oci_core_public_ip_pool.this.compartment_id
}

output "defined_tags" {
  description = "Defined tags for this resource. Each key is predefined and scoped to a namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm).  Example: `{\"Operations.CostCenter\": \"42\"}`"
  value       = oci_core_public_ip_pool.this.defined_tags
}

output "display_name" {
  description = "A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  value       = oci_core_public_ip_pool.this.display_name
}

output "freeform_tags" {
  description = "Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm).  Example: `{\"Department\": \"Finance\"}`"
  value       = oci_core_public_ip_pool.this.freeform_tags
}

output "state" {
  description = "The public IP pool's current state."
  value       = oci_core_public_ip_pool.this.state
}

output "time_created" {
  description = "The date and time the public IP pool was created, in the format defined by [RFC3339](https://tools.ietf.org/html/rfc3339).  Example: `2016-08-25T21:10:29.600Z`"
  value       = oci_core_public_ip_pool.this.time_created
}
