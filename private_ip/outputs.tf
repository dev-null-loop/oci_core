output "id" {
  description = "The private IP's Oracle ID ([OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm))."
  value       = oci_core_private_ip.this.id
}

output "availability_domain" {
  description = "The private IP's availability domain. This attribute will be null if this is a *secondary* private IP assigned to a VNIC that is in a *regional* subnet.  Example: `Uocm:PHX-AD-1`"
  value       = oci_core_private_ip.this.availability_domain
}

output "cidr_prefix_length" {
  description = "The secondary IPv4 CIDR prefix length."
  value       = oci_core_private_ip.this.cidr_prefix_length
}

output "compartment_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the compartment containing the private IP."
  value       = oci_core_private_ip.this.compartment_id
}

output "defined_tags" {
  description = "Defined tags for this resource. Each key is predefined and scoped to a namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm).  Example: `{\"Operations.CostCenter\": \"42\"}`"
  value       = oci_core_private_ip.this.defined_tags
}

output "display_name" {
  description = "A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  value       = oci_core_private_ip.this.display_name
}

output "freeform_tags" {
  description = "Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm).  Example: `{\"Department\": \"Finance\"}`"
  value       = oci_core_private_ip.this.freeform_tags
}

output "hostname_label" {
  description = "The hostname for the private IP. Used for DNS."
  value       = oci_core_private_ip.this.hostname_label
}

output "ip_address" {
  description = "The private IP address of the `privateIp` object. The address is within the CIDR of the VNIC's subnet."
  value       = oci_core_private_ip.this.ip_address
}

output "ip_state" {
  description = "State of the IP address. If an IP address is assigned to a VNIC it is ASSIGNED, otherwise it is AVAILABLE."
  value       = oci_core_private_ip.this.ip_state
}

output "ipv4subnet_cidr_at_creation" {
  description = "Ipv4 Subnet CIDR specified whn creating the PrivateIP."
  value       = oci_core_private_ip.this.ipv4subnet_cidr_at_creation
}

output "is_primary" {
  description = "Whether this private IP is the primary one on the VNIC. Primary private IPs are unassigned and deleted automatically when the VNIC is terminated.  Example: `true`"
  value       = oci_core_private_ip.this.is_primary
}

output "lifetime" {
  description = "Lifetime of the IP address. There are two types of IPv6 IPs:"
  value       = oci_core_private_ip.this.lifetime
}

output "route_table_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the route table the IP address or VNIC will use. For more information, see [Source Based Routing](https://docs.oracle.com/iaas/Content/Network/Tasks/managingroutetables.htm#Overview_of_Routing_for_Your_VCN__source_routing)."
  value       = oci_core_private_ip.this.route_table_id
}

output "subnet_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the subnet the VNIC is in."
  value       = oci_core_private_ip.this.subnet_id
}

output "time_created" {
  description = "The date and time the private IP was created, in the format defined by [RFC3339](https://tools.ietf.org/html/rfc3339).  Example: `2016-08-25T21:10:29.600Z`"
  value       = oci_core_private_ip.this.time_created
}

output "vlan_id" {
  description = "Applicable only if the `PrivateIp` object is being used with a VLAN as part of the Oracle Cloud VMware Solution. The `vlanId` is the [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the VLAN."
  value       = oci_core_private_ip.this.vlan_id
}

output "vnic_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the VNIC the private IP is assigned to."
  value       = oci_core_private_ip.this.vnic_id
}
