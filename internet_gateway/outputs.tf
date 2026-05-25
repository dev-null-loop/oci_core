output "id" {
  description = "The internet gateway's Oracle ID ([OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm))."
  value       = oci_core_internet_gateway.this.id
}

output "compartment_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the compartment containing the internet gateway."
  value       = oci_core_internet_gateway.this.compartment_id
}

output "defined_tags" {
  description = "Defined tags for this resource. Each key is predefined and scoped to a namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm).  Example: `{\"Operations.CostCenter\": \"42\"}`"
  value       = oci_core_internet_gateway.this.defined_tags
}

output "display_name" {
  description = "A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  value       = oci_core_internet_gateway.this.display_name
}

output "enabled" {
  description = "Whether the gateway is enabled. When the gateway is disabled, traffic is not routed to/from the Internet, regardless of route rules."
  value       = oci_core_internet_gateway.this.enabled
}

output "freeform_tags" {
  description = "Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm).  Example: `{\"Department\": \"Finance\"}`"
  value       = oci_core_internet_gateway.this.freeform_tags
}

output "route_table_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the route table the Internet Gateway is using."
  value       = oci_core_internet_gateway.this.route_table_id
}

output "state" {
  description = "The internet gateway's current state."
  value       = oci_core_internet_gateway.this.state
}

output "time_created" {
  description = "The date and time the internet gateway was created, in the format defined by [RFC3339](https://tools.ietf.org/html/rfc3339).  Example: `2016-08-25T21:10:29.600Z`"
  value       = oci_core_internet_gateway.this.time_created
}

output "vcn_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the VCN the Internet Gateway belongs to."
  value       = oci_core_internet_gateway.this.vcn_id
}
