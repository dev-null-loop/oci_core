output "id" {
  description = "The route distribution's Oracle ID ([OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm))."
  value       = oci_core_drg_route_distribution.this.id
}
