output "id" {
  description = "DRG Attachment id"
  value       = oci_core_drg_attachment.this.id
}

output "compartment_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the compartment containing the DRG attachment."
  value       = oci_core_drg_attachment.this.compartment_id
}

output "drg_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the DRG."
  value       = oci_core_drg_attachment.this.drg_id
}

output "drg_route_table_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the DRG route table that is assigned to this attachment."
  value       = oci_core_drg_attachment.this.drg_route_table_id
}

output "export_drg_route_distribution_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the export route distribution used to specify how routes in the assigned DRG route table are advertised to the attachment. If this value is null, no routes are advertised through this attachment."
  value       = oci_core_drg_attachment.this.export_drg_route_distribution_id
}

output "is_cross_tenancy" {
  description = "Indicates whether the DRG attachment and attached network live in a different tenancy than the DRG.  Example: `false`"
  value       = oci_core_drg_attachment.this.is_cross_tenancy
}

output "network_details" {
  description = "The attached network details."
  value       = oci_core_drg_attachment.this.network_details
}

output "state" {
  description = "The DRG attachment's current state."
  value       = oci_core_drg_attachment.this.state
}

output "time_created" {
  description = "The date and time the DRG attachment was created, in the format defined by [RFC3339](https://tools.ietf.org/html/rfc3339).  Example: `2016-08-25T21:10:29.600Z`"
  value       = oci_core_drg_attachment.this.time_created
}
