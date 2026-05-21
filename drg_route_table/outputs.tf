output "id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the DRG route table."
  value       = oci_core_drg_route_table.this.id
}

output "compartment_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the compartment the DRG is in. The DRG route table is always in the same compartment as the DRG."
  value       = oci_core_drg_route_table.this.compartment_id
}

output "display_name" {
  description = "A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  value       = oci_core_drg_route_table.this.display_name
}

output "drg_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the DRG the DRG that contains this route table."
  value       = oci_core_drg_route_table.this.drg_id
}

output "import_drg_route_distribution_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the import route distribution used to specify how incoming route advertisements from referenced attachments are inserted into the DRG route table."
  value       = oci_core_drg_route_table.this.import_drg_route_distribution_id
}

output "is_ecmp_enabled" {
  description = "If you want traffic to be routed using ECMP across your virtual circuits or IPSec tunnels to your on-premises network, enable ECMP on the DRG route table to which these attachments import routes."
  value       = oci_core_drg_route_table.this.is_ecmp_enabled
}

output "state" {
  description = "The DRG route table's current state."
  value       = oci_core_drg_route_table.this.state
}

output "time_created" {
  description = "The date and time the DRG route table was created, in the format defined by [RFC3339](https://tools.ietf.org/html/rfc3339).  Example: `2016-08-25T21:10:29.600Z`"
  value       = oci_core_drg_route_table.this.time_created
}
