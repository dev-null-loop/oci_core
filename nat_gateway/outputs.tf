output "id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the NAT gateway."
  value       = oci_core_nat_gateway.this.id
}

output "block_traffic" {
  description = "Whether the NAT gateway blocks traffic through it. The default is `false`.  Example: `true`"
  value       = oci_core_nat_gateway.this.block_traffic
}

output "compartment_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the compartment that contains the NAT gateway."
  value       = oci_core_nat_gateway.this.compartment_id
}

output "defined_tags" {
  description = "Defined tags for this resource. Each key is predefined and scoped to a namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm).  Example: `{\"Operations.CostCenter\": \"42\"}`"
  value       = oci_core_nat_gateway.this.defined_tags
}

output "display_name" {
  description = "A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  value       = oci_core_nat_gateway.this.display_name
}

output "freeform_tags" {
  description = "Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm).  Example: `{\"Department\": \"Finance\"}`"
  value       = oci_core_nat_gateway.this.freeform_tags
}

output "nat_ip" {
  description = "The IP address associated with the NAT gateway."
  value       = oci_core_nat_gateway.this.nat_ip
}

output "public_ip_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the public IP address associated with the NAT gateway."
  value       = oci_core_nat_gateway.this.public_ip_id
}

output "route_table_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the route table used by the NAT gateway."
  value       = oci_core_nat_gateway.this.route_table_id
}

output "state" {
  description = "The NAT gateway's current state."
  value       = oci_core_nat_gateway.this.state
}

output "time_created" {
  description = "The date and time the NAT gateway was created, in the format defined by [RFC3339](https://tools.ietf.org/html/rfc3339).  Example: `2016-08-25T21:10:29.600Z`"
  value       = oci_core_nat_gateway.this.time_created
}

output "vcn_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the VCN the NAT gateway belongs to."
  value       = oci_core_nat_gateway.this.vcn_id
}
