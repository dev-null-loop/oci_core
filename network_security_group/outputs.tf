output "id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the network security group."
  value       = oci_core_network_security_group.this.id
}

output "compartment_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the compartment the network security group is in."
  value       = oci_core_network_security_group.this.compartment_id
}

output "display_name" {
  description = "A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  value       = oci_core_network_security_group.this.display_name
}

output "state" {
  description = "The network security group's current state."
  value       = oci_core_network_security_group.this.state
}

output "time_created" {
  description = "The date and time the network security group was created, in the format defined by [RFC3339](https://tools.ietf.org/html/rfc3339)."
  value       = oci_core_network_security_group.this.time_created
}

output "vcn_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the network security group's VCN."
  value       = oci_core_network_security_group.this.vcn_id
}
