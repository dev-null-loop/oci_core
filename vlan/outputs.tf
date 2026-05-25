output "id" {
  description = "The VLAN's Oracle ID ([OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm))."
  value       = oci_core_vlan.this.id
}

output "availability_domain" {
  description = "The VLAN's availability domain. This attribute will be null if this is a regional VLAN rather than an AD-specific VLAN.  Example: `Uocm:PHX-AD-1`"
  value       = oci_core_vlan.this.availability_domain
}

output "cidr_block" {
  description = "The range of IPv4 addresses that will be used for layer 3 communication with hosts outside the VLAN.  Example: `192.168.1.0/24`"
  value       = oci_core_vlan.this.cidr_block
}

output "compartment_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the compartment containing the VLAN."
  value       = oci_core_vlan.this.compartment_id
}

output "defined_tags" {
  description = "Defined tags for this resource. Each key is predefined and scoped to a namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm).  Example: `{\"Operations.CostCenter\": \"42\"}`"
  value       = oci_core_vlan.this.defined_tags
}

output "display_name" {
  description = "A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  value       = oci_core_vlan.this.display_name
}

output "freeform_tags" {
  description = "Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm).  Example: `{\"Department\": \"Finance\"}`"
  value       = oci_core_vlan.this.freeform_tags
}

output "nsg_ids" {
  description = "A list of the OCIDs of the network security groups (NSGs) to use with this VLAN. All VNICs in the VLAN belong to these NSGs. For more information about NSGs, see [NetworkSecurityGroup](https://docs.cloud.oracle.com/iaas/api/#/en/iaas/latest/NetworkSecurityGroup/)."
  value       = oci_core_vlan.this.nsg_ids
}

output "route_table_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the route table that the VLAN uses."
  value       = oci_core_vlan.this.route_table_id
}

output "state" {
  description = "The VLAN's current state."
  value       = oci_core_vlan.this.state
}

output "time_created" {
  description = "The date and time the VLAN was created, in the format defined by [RFC3339](https://tools.ietf.org/html/rfc3339).  Example: `2016-08-25T21:10:29.600Z`"
  value       = oci_core_vlan.this.time_created
}

output "vcn_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the VCN the VLAN is in."
  value       = oci_core_vlan.this.vcn_id
}

output "vlan_tag" {
  description = "The IEEE 802.1Q VLAN tag of this VLAN.  Example: `100`"
  value       = oci_core_vlan.this.vlan_tag
}
