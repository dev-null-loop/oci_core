output "id" {
  description = "Oracle ID ([OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm)) for the set of DHCP options."
  value       = oci_core_dhcp_options.this.id
}
