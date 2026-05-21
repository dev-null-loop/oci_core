output "id" {
  description = "The route distribution's Oracle ID ([OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm))."
  value       = oci_core_drg_route_distribution.this.id
}

output "compartment_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the compartment containing the route distribution."
  value       = oci_core_drg_route_distribution.this.compartment_id
}

output "display_name" {
  description = "A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  value       = oci_core_drg_route_distribution.this.display_name
}

output "distribution_type" {
  description = "Whether this distribution defines how routes get imported into route tables or exported through DRG attachments."
  value       = oci_core_drg_route_distribution.this.distribution_type
}

output "drg_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the DRG that contains this route distribution."
  value       = oci_core_drg_route_distribution.this.drg_id
}

output "state" {
  description = "The route distribution's current state."
  value       = oci_core_drg_route_distribution.this.state
}

output "time_created" {
  description = "The date and time the route distribution was created, in the format defined by [RFC3339](https://tools.ietf.org/html/rfc3339).  Example: `2016-08-25T21:10:29.600Z`"
  value       = oci_core_drg_route_distribution.this.time_created
}
