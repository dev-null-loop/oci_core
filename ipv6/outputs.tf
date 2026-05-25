output "id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the IPv6."
  value       = oci_core_ipv6.this.id
}

output "cidr_prefix_length" {
  description = "Length of cidr range. Optional field to specify flexible cidr."
  value       = oci_core_ipv6.this.cidr_prefix_length
}

output "compartment_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the compartment containing the IPv6. This is the same as the VNIC's compartment."
  value       = oci_core_ipv6.this.compartment_id
}

output "defined_tags" {
  description = "Defined tags for this resource. Each key is predefined and scoped to a namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm).  Example: `{\"Operations.CostCenter\": \"42\"}`"
  value       = oci_core_ipv6.this.defined_tags
}

output "display_name" {
  description = "A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  value       = oci_core_ipv6.this.display_name
}

output "freeform_tags" {
  description = "Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm).  Example: `{\"Department\": \"Finance\"}`"
  value       = oci_core_ipv6.this.freeform_tags
}

output "ip_address" {
  description = "The IPv6 address of the `IPv6` object. The address is within the IPv6 prefix of the VNIC's subnet (see the `ipv6CidrBlock` attribute for the [Subnet](https://docs.cloud.oracle.com/iaas/api/#/en/iaas/latest/Subnet/) object.  Example: `2001:0db8:0123:1111:abcd:ef01:2345:6789`"
  value       = oci_core_ipv6.this.ip_address
}

output "ip_state" {
  description = "State of the IP address. If an IP address is assigned to a VNIC it is ASSIGNED, otherwise it is AVAILABLE."
  value       = oci_core_ipv6.this.ip_state
}

output "lifetime" {
  description = "Lifetime of the IP address. There are two types of IPv6 IPs:"
  value       = oci_core_ipv6.this.lifetime
}

output "route_table_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the route table the IP address or VNIC will use. For more information, see [Source Based Routing](https://docs.oracle.com/iaas/Content/Network/Tasks/managingroutetables.htm#Overview_of_Routing_for_Your_VCN__source_routing)."
  value       = oci_core_ipv6.this.route_table_id
}

output "state" {
  description = "The IPv6's current state."
  value       = oci_core_ipv6.this.state
}

output "subnet_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the subnet the VNIC is in."
  value       = oci_core_ipv6.this.subnet_id
}

output "time_created" {
  description = "The date and time the IPv6 was created, in the format defined by [RFC3339](https://tools.ietf.org/html/rfc3339).  Example: `2016-08-25T21:10:29.600Z`"
  value       = oci_core_ipv6.this.time_created
}

output "vnic_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the VNIC the IPv6 is assigned to. The VNIC and IPv6 must be in the same subnet."
  value       = oci_core_ipv6.this.vnic_id
}
