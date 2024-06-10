output "id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the DRG route table."
  value       = oci_core_drg_route_table.this.id
}
