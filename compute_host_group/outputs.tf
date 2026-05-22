output "id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) for the Customer-unique host group"
  value       = oci_core_compute_host_group.this.id
}

output "availability_domain" {
  description = "The availability_domain of a host group.  Example: `Uocm:PHX-AD-1`"
  value       = oci_core_compute_host_group.this.availability_domain
}

output "compartment_id" {
  description = "The OCID of the compartment that contains host group."
  value       = oci_core_compute_host_group.this.compartment_id
}

output "configurations" {
  description = "A list of HostGroupConfiguration objects"
  value       = oci_core_compute_host_group.this.configurations
}

output "display_name" {
  description = "A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  value       = oci_core_compute_host_group.this.display_name
}

output "is_targeted_placement_required" {
  description = "A flag that allows customers to restrict placement for hosts attached to the group. If true, the only way to place on hosts is to target the specific host group."
  value       = oci_core_compute_host_group.this.is_targeted_placement_required
}

output "state" {
  description = "The lifecycle state of the host group"
  value       = oci_core_compute_host_group.this.state
}

output "system_tags" {
  description = "Defined tags for this resource. Each key is predefined and scoped to a namespace."
  value       = oci_core_compute_host_group.this.system_tags
}

output "time_created" {
  description = "The date and time the host group was created, in the format defined by [RFC3339](https://tools.ietf.org/html/rfc3339)."
  value       = oci_core_compute_host_group.this.time_created
}

output "time_updated" {
  description = "The date and time the host group was updated, in the format defined by [RFC3339](https://tools.ietf.org/html/rfc3339)."
  value       = oci_core_compute_host_group.this.time_updated
}
