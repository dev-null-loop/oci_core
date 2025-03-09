* `capture_filter_id` - (Required) (Updatable) The capture filter's Oracle ID ([OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm)).
* `compartment_id` - (Required) (Updatable) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the compartment containing the `Vtap` resource.
* `defined_tags` - (Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm).  Example: `{"Operations.CostCenter": "42"}`
* `display_name` - (Optional) (Updatable) A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information.
* `encapsulation_protocol` - (Optional) (Updatable) Defines an encapsulation header type for the VTAP's mirrored traffic.
* `freeform_tags` - (Optional) (Updatable) Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm).  Example: `{"Department": "Finance"}`
* `is_vtap_enabled` - (Optional) (Updatable) Used to start or stop a `Vtap` resource.
	* `TRUE` directs the VTAP to start mirroring traffic.
	* `FALSE` (Default) directs the VTAP to stop mirroring traffic.
* `max_packet_size` - (Optional) (Updatable) The maximum size of the packets to be included in the filter.
* `source_id` - (Required) (Updatable) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the source point where packets are captured.
* `source_private_endpoint_ip` - (Optional) (Updatable) The IP Address of the source private endpoint.
* `source_private_endpoint_subnet_id` - (Optional) (Updatable) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the subnet that source private endpoint belongs to.
* `source_type` - (Optional) (Updatable) The source type for the VTAP.
* `target_id` - (Optional) (Updatable) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the destination resource where mirrored packets are sent.
* `target_ip` - (Optional) (Updatable) The IP address of the destination resource where mirrored packets are sent.
* `target_type` - (Optional) (Updatable) The target type for the VTAP.
* `traffic_mode` - (Optional) (Updatable) Used to control the priority of traffic. It is an optional field. If it not passed, the value is DEFAULT
* `vcn_id` - (Required) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the VCN containing the `Vtap` resource.
* `vxlan_network_identifier` - (Optional) (Updatable) The virtual extensible LAN (VXLAN) network identifier (or VXLAN segment ID) that uniquely identifies the VXLAN.
