output "id" {
  description = "The OCID of the VNIC attachment."
  value       = oci_core_vnic_attachment.this.id
}

output "availability_domain" {
  description = "The availability domain of the instance.  Example: `Uocm:PHX-AD-1`"
  value       = oci_core_vnic_attachment.this.availability_domain
}

output "compartment_id" {
  description = "The OCID of the compartment the VNIC attachment is in, which is the same compartment the instance is in."
  value       = oci_core_vnic_attachment.this.compartment_id
}

output "display_name" {
  description = "A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  value       = oci_core_vnic_attachment.this.display_name
}

output "instance_id" {
  description = "The OCID of the instance."
  value       = oci_core_vnic_attachment.this.instance_id
}

output "nic_index" {
  description = "Which physical network interface card (NIC) the VNIC uses. Certain bare metal instance shapes have two active physical NICs (0 and 1). If you add a secondary VNIC to one of these instances, you can specify which NIC the VNIC will use. For more information, see [Virtual Network Interface Cards (VNICs)](https://docs.cloud.oracle.com/iaas/Content/Network/Tasks/managingVNICs.htm)."
  value       = oci_core_vnic_attachment.this.nic_index
}

output "state" {
  description = "The current state of the VNIC attachment."
  value       = oci_core_vnic_attachment.this.state
}

output "subnet_id" {
  description = "The OCID of the subnet to create the VNIC in."
  value       = oci_core_vnic_attachment.this.subnet_id
}

output "time_created" {
  description = "The date and time the VNIC attachment was created, in the format defined by [RFC3339](https://tools.ietf.org/html/rfc3339).  Example: `2016-08-25T21:10:29.600Z`"
  value       = oci_core_vnic_attachment.this.time_created
}

output "vlan_id" {
  description = "The OCID of the VLAN to create the VNIC in. Creating the VNIC in a VLAN (instead of a subnet) is possible only if you are an Oracle Cloud VMware Solution customer."
  value       = oci_core_vnic_attachment.this.vlan_id
}

output "vlan_tag" {
  description = "The Oracle-assigned VLAN tag of the attached VNIC. Available after the attachment process is complete."
  value       = oci_core_vnic_attachment.this.vlan_tag
}

output "vnic_id" {
  description = "The OCID of the VNIC. Available after the attachment process is complete."
  value       = oci_core_vnic_attachment.this.vnic_id
}
