output "id" {
  description = "The VCN's Oracle ID"
  value       = oci_core_vcn.this.id
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

output "display_name" {
  description = "A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  value       = oci_core_vcn.this.display_name
}

output "dns_resolver_id" {
  description = "The OCID of the DNS resolver in the association. We won't have the DNS resolver id as soon as vcn is created, we will create it asynchronously. It would be null until it is actually created."
  value       = data.oci_core_vcn_dns_resolver_association.this.dns_resolver_id
}
