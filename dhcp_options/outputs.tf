output "id" {
  description = "Oracle ID ([OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm)) for the set of DHCP options."
  value       = oci_core_dhcp_options.this.id
}

output "compartment_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the compartment containing the set of DHCP options."
  value       = oci_core_dhcp_options.this.compartment_id
}

output "display_name" {
  description = "A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  value       = oci_core_dhcp_options.this.display_name
}

output "domain_name_type" {
  description = "The search domain name type of DHCP options."
  value       = oci_core_dhcp_options.this.domain_name_type
}

output "options" {
  description = "The collection of individual DHCP options."
  value       = oci_core_dhcp_options.this.options
}

output "state" {
  description = "The current state of the set of DHCP options."
  value       = oci_core_dhcp_options.this.state
}

output "time_created" {
  description = "Date and time the set of DHCP options was created, in the format defined by [RFC3339](https://tools.ietf.org/html/rfc3339)."
  value       = oci_core_dhcp_options.this.time_created
}

output "vcn_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the VCN the set of DHCP options belongs to."
  value       = oci_core_dhcp_options.this.vcn_id
}
