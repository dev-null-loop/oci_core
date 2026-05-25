output "id" {
  description = "The VTAP's Oracle ID ([OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm))."
  value       = oci_core_vtap.this.id
}

output "capture_filter_id" {
  description = "The capture filter's Oracle ID ([OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm))."
  value       = oci_core_vtap.this.capture_filter_id
}

output "compartment_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the compartment containing the `Vtap` resource."
  value       = oci_core_vtap.this.compartment_id
}

output "defined_tags" {
  description = "Defined tags for this resource. Each key is predefined and scoped to a namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm).  Example: `{\"Operations.CostCenter\": \"42\"}`"
  value       = oci_core_vtap.this.defined_tags
}

output "display_name" {
  description = "A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  value       = oci_core_vtap.this.display_name
}

output "encapsulation_protocol" {
  description = "Defines an encapsulation header type for the VTAP's mirrored traffic."
  value       = oci_core_vtap.this.encapsulation_protocol
}

output "freeform_tags" {
  description = "Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm).  Example: `{\"Department\": \"Finance\"}`"
  value       = oci_core_vtap.this.freeform_tags
}

output "is_vtap_enabled" {
  description = "Used to start or stop a `Vtap` resource."
  value       = oci_core_vtap.this.is_vtap_enabled
}

output "lifecycle_state_details" {
  description = "The VTAP's current running state."
  value       = oci_core_vtap.this.lifecycle_state_details
}

output "max_packet_size" {
  description = "The maximum size of the packets to be included in the filter."
  value       = oci_core_vtap.this.max_packet_size
}

output "source_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the source point where packets are captured."
  value       = oci_core_vtap.this.source_id
}

output "source_private_endpoint_ip" {
  description = "The IP Address of the source private endpoint."
  value       = oci_core_vtap.this.source_private_endpoint_ip
}

output "source_private_endpoint_subnet_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the subnet that source private endpoint belongs to."
  value       = oci_core_vtap.this.source_private_endpoint_subnet_id
}

output "source_type" {
  description = "The source type for the VTAP."
  value       = oci_core_vtap.this.source_type
}

output "state" {
  description = "The VTAP's administrative lifecycle state."
  value       = oci_core_vtap.this.state
}

output "target_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the destination resource where mirrored packets are sent."
  value       = oci_core_vtap.this.target_id
}

output "target_ip" {
  description = "The IP address of the destination resource where mirrored packets are sent."
  value       = oci_core_vtap.this.target_ip
}

output "target_type" {
  description = "The target type for the VTAP."
  value       = oci_core_vtap.this.target_type
}

output "time_created" {
  description = "The date and time the VTAP was created, in the format defined by [RFC3339](https://tools.ietf.org/html/rfc3339).  Example: `2020-08-25T21:10:29.600Z`"
  value       = oci_core_vtap.this.time_created
}

output "traffic_mode" {
  description = "Used to control the priority of traffic. It is an optional field. If it not passed, the value is DEFAULT"
  value       = oci_core_vtap.this.traffic_mode
}

output "vcn_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the VCN containing the `Vtap` resource."
  value       = oci_core_vtap.this.vcn_id
}

output "vxlan_network_identifier" {
  description = "The virtual extensible LAN (VXLAN) network identifier (or VXLAN segment ID) that uniquely identifies the VXLAN."
  value       = oci_core_vtap.this.vxlan_network_identifier
}
