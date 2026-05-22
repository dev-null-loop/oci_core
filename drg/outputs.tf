output "id" {
  description = "The DRG's Oracle ID ([OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm))."
  value       = oci_core_drg.this.id
}

output "compartment_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the compartment containing the DRG."
  value       = oci_core_drg.this.compartment_id
}

output "display_name" {
  description = "A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  value       = oci_core_drg.this.display_name
}

output "defined_tags" {
  description = "Defined tags for this resource. Each key is predefined and scoped to a namespace."
  value       = oci_core_drg.this.defined_tags
}

output "default_drg_route_tables" {
  description = "The default DRG route table for this DRG. Each network type has a default DRG route table."
  value       = oci_core_drg.this.default_drg_route_tables
}

output "default_export_drg_route_distribution_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of this DRG's default export route distribution for the DRG attachments."
  value       = oci_core_drg.this.default_export_drg_route_distribution_id
}

output "freeform_tags" {
  description = "Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace."
  value       = oci_core_drg.this.freeform_tags
}

output "redundancy_status" {
  description = "The redundancy status of the DRG specified."
  value       = oci_core_drg.this.redundancy_status
}

output "state" {
  description = "The DRG's current state."
  value       = oci_core_drg.this.state
}

output "time_created" {
  description = "The date and time the DRG was created, in the format defined by [RFC3339](https://tools.ietf.org/html/rfc3339).  Example: `2016-08-25T21:10:29.600Z`"
  value       = oci_core_drg.this.time_created
}
