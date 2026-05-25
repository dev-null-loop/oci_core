output "id" {
  description = "The subnet's Oracle ID ([OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm))."
  value       = oci_core_subnet.this.id
}

output "availability_domain" {
  description = "The subnet's availability domain. This attribute will be null if this is a regional subnet instead of an AD-specific subnet. Oracle recommends creating regional subnets.  Example: `Uocm:PHX-AD-1`"
  value       = oci_core_subnet.this.availability_domain
}

output "cidr_block" {
  description = "The subnet's CIDR block.  Example: `10.0.1.0/24`"
  value       = oci_core_subnet.this.cidr_block
}

output "compartment_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the compartment containing the subnet."
  value       = oci_core_subnet.this.compartment_id
}

output "defined_tags" {
  description = "Defined tags for this resource. Each key is predefined and scoped to a namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm).  Example: `{\"Operations.CostCenter\": \"42\"}`"
  value       = oci_core_subnet.this.defined_tags
}

output "dhcp_options_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the set of DHCP options that the subnet uses."
  value       = oci_core_subnet.this.dhcp_options_id
}

output "display_name" {
  description = "A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  value       = oci_core_subnet.this.display_name
}

output "dns_label" {
  description = "A DNS label for the subnet, used in conjunction with the VNIC's hostname and VCN's DNS label to form a fully qualified domain name (FQDN) for each VNIC within this subnet (for example, `bminstance1.subnet123.vcn1.oraclevcn.com`). Must be an alphanumeric string that begins with a letter and is unique within the VCN. The value cannot be changed."
  value       = oci_core_subnet.this.dns_label
}

output "freeform_tags" {
  description = "Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm).  Example: `{\"Department\": \"Finance\"}`"
  value       = oci_core_subnet.this.freeform_tags
}

output "ipv4cidr_blocks" {
  description = "The list of all IPv4 CIDR blocks for the subnet that meets the following criteria:"
  value       = oci_core_subnet.this.ipv4cidr_blocks
}

output "ipv6cidr_block" {
  description = "For an IPv6-enabled subnet, this is the IPv6 prefix for the subnet's IP address space. The subnet size is always /64. See [IPv6 Addresses](https://docs.cloud.oracle.com/iaas/Content/Network/Concepts/ipv6.htm).  Example: `2001:0db8:0123:1111::/64`"
  value       = oci_core_subnet.this.ipv6cidr_block
}

output "ipv6cidr_blocks" {
  description = "The list of all IPv6 prefixes (Oracle allocated IPv6 GUA, ULA or private IPv6 prefixes, BYOIPv6 prefixes) for the subnet."
  value       = oci_core_subnet.this.ipv6cidr_blocks
}

output "ipv6virtual_router_ip" {
  description = "For an IPv6-enabled subnet, this is the IPv6 address of the virtual router.  Example: `2001:0db8:0123:1111:89ab:cdef:1234:5678`"
  value       = oci_core_subnet.this.ipv6virtual_router_ip
}

output "prohibit_internet_ingress" {
  description = "Whether to disallow ingress internet traffic to VNICs within this subnet. Defaults to false."
  value       = oci_core_subnet.this.prohibit_internet_ingress
}

output "prohibit_public_ip_on_vnic" {
  description = "Whether VNICs within this subnet can have public IP addresses. Defaults to false, which means VNICs created in this subnet will automatically be assigned public IP addresses unless specified otherwise during instance launch or VNIC creation (with the `assignPublicIp` flag in [CreateVnicDetails](https://docs.cloud.oracle.com/iaas/api/#/en/iaas/latest/CreateVnicDetails/)). If `prohibitPublicIpOnVnic` is set to true, VNICs created in this subnet cannot have public IP addresses (that is, it's a private subnet).  Example: `true`"
  value       = oci_core_subnet.this.prohibit_public_ip_on_vnic
}

output "route_table_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the route table that the subnet uses."
  value       = oci_core_subnet.this.route_table_id
}

output "security_list_ids" {
  description = "The OCIDs of the security list or lists that the subnet uses. Remember that security lists are associated *with the subnet*, but the rules are applied to the individual VNICs in the subnet."
  value       = oci_core_subnet.this.security_list_ids
}

output "state" {
  description = "The subnet's current state."
  value       = oci_core_subnet.this.state
}

output "subnet_domain_name" {
  description = "The subnet's domain name, which consists of the subnet's DNS label, the VCN's DNS label, and the `oraclevcn.com` domain."
  value       = oci_core_subnet.this.subnet_domain_name
}

output "time_created" {
  description = "The date and time the subnet was created, in the format defined by [RFC3339](https://tools.ietf.org/html/rfc3339).  Example: `2016-08-25T21:10:29.600Z`"
  value       = oci_core_subnet.this.time_created
}

output "vcn_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the VCN the subnet is in."
  value       = oci_core_subnet.this.vcn_id
}

output "virtual_router_ip" {
  description = "The IP address of the virtual router.  Example: `10.0.14.1`"
  value       = oci_core_subnet.this.virtual_router_ip
}

output "virtual_router_mac" {
  description = "The MAC address of the virtual router.  Example: `00:00:00:00:00:01`"
  value       = oci_core_subnet.this.virtual_router_mac
}
