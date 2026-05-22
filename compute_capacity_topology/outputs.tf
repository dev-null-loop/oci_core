output "id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the compute capacity topology."
  value       = oci_core_compute_capacity_topology.this.id
}

output "availability_domain" {
  description = "The availability domain of the compute capacity topology.  Example: `Uocm:US-CHICAGO-1-AD-2`"
  value       = oci_core_compute_capacity_topology.this.availability_domain
}

output "capacity_source" {
  description = "A capacity source of bare metal hosts."
  value       = oci_core_compute_capacity_topology.this.capacity_source
}

output "compartment_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the compartment that contains the compute capacity topology."
  value       = oci_core_compute_capacity_topology.this.compartment_id
}

output "display_name" {
  description = "A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  value       = oci_core_compute_capacity_topology.this.display_name
}

output "state" {
  description = "The current state of the compute capacity topology."
  value       = oci_core_compute_capacity_topology.this.state
}

output "time_created" {
  description = "The date and time that the compute capacity topology was created, in the format defined by [RFC3339](https://tools.ietf.org/html/rfc3339)."
  value       = oci_core_compute_capacity_topology.this.time_created
}

output "time_updated" {
  description = "The date and time that the compute capacity topology was updated, in the format defined by [RFC3339](https://tools.ietf.org/html/rfc3339)."
  value       = oci_core_compute_capacity_topology.this.time_updated
}
