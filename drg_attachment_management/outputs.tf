output "id" {
  description = "The DRG attachment's Oracle ID ([OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm))."
  value       = oci_core_drg_attachment_management.this.id
}

output "attachment_type" {
  description = "The type for the network resource attached to the DRG."
  value       = oci_core_drg_attachment_management.this.attachment_type
}

output "compartment_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the compartment."
  value       = oci_core_drg_attachment_management.this.compartment_id
}

output "drg_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the DRG."
  value       = oci_core_drg_attachment_management.this.drg_id
}

output "drg_route_table_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the DRG route table assigned to the DRG attachment."
  value       = oci_core_drg_attachment_management.this.drg_route_table_id
}

output "export_drg_route_distribution_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the export route distribution used to specify how routes in the assigned DRG route table are advertised to the attachment. If this value is null, no routes are advertised through this attachment."
  value       = oci_core_drg_attachment_management.this.export_drg_route_distribution_id
}

output "network_details" {
  description = "The attached network details."
  value       = oci_core_drg_attachment_management.this.network_details
}

output "network_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the resource (virtual circuit, VCN, IPSec tunnel, or remote peering connection) attached to the DRG."
  value       = oci_core_drg_attachment_management.this.network_id
}

output "state" {
  description = "A filter to return only resources that match the specified lifecycle state. The value is case insensitive."
  value       = oci_core_drg_attachment_management.this.state
}

output "time_created" {
  description = "The date and time the DRG attachment was created, in the format defined by [RFC3339](https://tools.ietf.org/html/rfc3339).  Example: `2016-08-25T21:10:29.600Z`"
  value       = oci_core_drg_attachment_management.this.time_created
}
