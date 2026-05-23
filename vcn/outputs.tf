output "id" {
  description = "The VCN's Oracle ID"
  value       = oci_core_vcn.this.id
}

output "default_dhcp_options_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) for the VCN's default set of DHCP options."
  value       = oci_core_vcn.this.default_dhcp_options_id
}

output "default_route_table_id" {
  description = " The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) for the VCN's default route table."
  value       = oci_core_vcn.this.default_route_table_id
}

output "compartment_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the compartment containing the VCN."
  value       = oci_core_vcn.this.compartment_id
}

output "default_security_list_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) for the VCN's default security list."
  value       = oci_core_vcn.this.default_security_list_id
}

output "managed_default_security_list_id" {
  description = "The managed default security list OCID when `manage_default_security_list` is enabled, otherwise null."
  value       = try(oci_core_default_security_list.this[0].id, null)
}

output "display_name" {
  description = "A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  value       = oci_core_vcn.this.display_name
}

output "dns_label" {
  description = "A DNS label for the VCN."
  value       = oci_core_vcn.this.dns_label
}

output "dns_resolver_id" {
  description = "The OCID of the DNS resolver in the association. We won't have the DNS resolver id as soon as vcn is created, we will create it asynchronously. It would be null until it is actually created."
  value       = try(data.oci_core_vcn_dns_resolver_association.this[0].dns_resolver_id, null)
}

output "cidr_blocks" {
  description = "The list of IPv4 CIDR blocks the VCN will use."
  value       = oci_core_vcn.this.cidr_blocks
}

output "ipv6cidr_blocks" {
  description = "For an IPv6-enabled VCN, this is the list of IPv6 prefixes for the VCN's IP address space."
  value       = oci_core_vcn.this.ipv6cidr_blocks
}

output "ipv6private_cidr_blocks" {
  description = "For an IPv6-enabled VCN, this is the list of Private IPv6 prefixes for the VCN's IP address space."
  value       = oci_core_vcn.this.ipv6private_cidr_blocks
}

output "state" {
  description = "The VCN's current state."
  value       = oci_core_vcn.this.state
}

output "time_created" {
  description = "The date and time the VCN was created, in the format defined by RFC3339."
  value       = oci_core_vcn.this.time_created
}

output "vcn_domain_name" {
  description = "The VCN's domain name, which consists of the VCN's DNS label, and the `oraclevcn.com` domain."
  value       = oci_core_vcn.this.vcn_domain_name
}
