output "id" {
  description = "The Terraform ID for the compute capacity report."
  value       = oci_core_compute_capacity_report.this.id
}

output "availability_domain" {
  description = "The availability domain for the capacity report.  Example: `Uocm:PHX-AD-1`"
  value       = oci_core_compute_capacity_report.this.availability_domain
}

output "compartment_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) for the compartment. This should always be the root compartment."
  value       = oci_core_compute_capacity_report.this.compartment_id
}

output "shape_availabilities" {
  description = "Information about the available capacity for each shape in a capacity report."
  value       = oci_core_compute_capacity_report.this.shape_availabilities
}

output "time_created" {
  description = "The date and time the capacity report was created, in the format defined by [RFC3339](https://tools.ietf.org/html/rfc3339)."
  value       = oci_core_compute_capacity_report.this.time_created
}
