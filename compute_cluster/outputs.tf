output "id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the compute cluster."
  value       = oci_core_compute_cluster.this.id
}

output "availability_domain" {
  description = "The availability domain the compute cluster is running in.  Example: `Uocm:PHX-AD-1`"
  value       = oci_core_compute_cluster.this.availability_domain
}

output "compartment_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the compartment that contains the compute cluster."
  value       = oci_core_compute_cluster.this.compartment_id
}

output "display_name" {
  description = "A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  value       = oci_core_compute_cluster.this.display_name
}

output "state" {
  description = "The current state of the compute cluster."
  value       = oci_core_compute_cluster.this.state
}

output "time_created" {
  description = "The date and time the compute cluster was created, in the format defined by [RFC3339](https://tools.ietf.org/html/rfc3339)."
  value       = oci_core_compute_cluster.this.time_created
}
