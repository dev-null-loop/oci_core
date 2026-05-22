output "id" {
  description = "An Oracle-assigned identifier for the security rule. You specify this ID when you want to update or delete the rule."
  value       = oci_core_network_security_group_security_rule.this.id
}

output "description" {
  description = "An optional description of your choice for the rule."
  value       = oci_core_network_security_group_security_rule.this.description
}

output "destination" {
  description = "Conceptually, this is the range of IP addresses that a packet originating from the instance can go to."
  value       = oci_core_network_security_group_security_rule.this.destination
}

output "destination_type" {
  description = "Type of destination for the rule."
  value       = oci_core_network_security_group_security_rule.this.destination_type
}

output "direction" {
  description = "Direction of the security rule."
  value       = oci_core_network_security_group_security_rule.this.direction
}

output "icmp_options" {
  description = "Optional and valid only for ICMP and ICMPv6."
  value       = oci_core_network_security_group_security_rule.this.icmp_options
}

output "is_valid" {
  description = "Whether the rule is valid."
  value       = oci_core_network_security_group_security_rule.this.is_valid
}

output "network_security_group_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the network security group."
  value       = oci_core_network_security_group_security_rule.this.network_security_group_id
}

output "protocol" {
  description = "The transport protocol."
  value       = oci_core_network_security_group_security_rule.this.protocol
}

output "source" {
  description = "Conceptually, this is the range of IP addresses that a packet coming into the instance can come from."
  value       = oci_core_network_security_group_security_rule.this.source
}

output "source_type" {
  description = "Type of source for the rule."
  value       = oci_core_network_security_group_security_rule.this.source_type
}

output "stateless" {
  description = "A stateless rule allows traffic in one direction."
  value       = oci_core_network_security_group_security_rule.this.stateless
}

output "tcp_options" {
  description = "Optional and valid only for TCP."
  value       = oci_core_network_security_group_security_rule.this.tcp_options
}

output "time_created" {
  description = "The date and time the security rule was created. Format defined by [RFC3339](https://tools.ietf.org/html/rfc3339)."
  value       = oci_core_network_security_group_security_rule.this.time_created
}

output "udp_options" {
  description = "Optional and valid only for UDP."
  value       = oci_core_network_security_group_security_rule.this.udp_options
}
