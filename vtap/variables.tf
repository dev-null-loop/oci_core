variable "capture_filter_id" {
  description = "(Required) (Updatable) The capture filter's Oracle ID ([OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm))."
  type        = string
}

variable "compartment_id" {
  description = "(Required) (Updatable) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the compartment containing the `Vtap` resource."
  type        = string
}

variable "source_id" {
  description = "(Required) (Updatable) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the source point where packets are captured."
  type        = string
}

variable "vcn_id" {
  description = "(Required) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the VCN containing the `Vtap` resource."
  type        = string
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm).  Example: `{\"Operations.CostCenter\": \"42\"}`"
  type        = map(string)
  default     = null
}

variable "display_name" {
  description = "(Optional) (Updatable) A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  type        = string
  default     = null
}

variable "encapsulation_protocol" {
  description = "(Optional) (Updatable) Defines an encapsulation header type for the VTAP's mirrored traffic."
  type        = string
  default     = null
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm).  Example: `{\"Department\": \"Finance\"}`"
  type        = map(string)
  default     = {}
}

variable "is_vtap_enabled" {
  description = "(Optional) (Updatable) Used to start or stop a `Vtap` resource."
  type        = bool
  default     = null
}

variable "max_packet_size" {
  description = "(Optional) (Updatable) The maximum size of the packets to be included in the filter."
  type        = number
  default     = null
}

variable "source_private_endpoint_ip" {
  description = "(Optional) (Updatable) The IP Address of the source private endpoint."
  type        = string
  default     = null
}

variable "source_private_endpoint_subnet_id" {
  description = "(Optional) (Updatable) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the subnet that source private endpoint belongs to."
  type        = string
  default     = null
}

variable "source_type" {
  description = "(Optional) (Updatable) The source type for the VTAP."
  type        = string
  default     = null
}

variable "target_id" {
  description = "(Optional) (Updatable) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the destination resource where mirrored packets are sent."
  type        = string
  default     = null
}

variable "target_ip" {
  description = "(Optional) (Updatable) The IP address of the destination resource where mirrored packets are sent."
  type        = string
  default     = null
}

variable "target_type" {
  description = "(Optional) (Updatable) The target type for the VTAP."
  type        = string
  default     = null
}

variable "traffic_mode" {
  description = "(Optional) (Updatable) Used to control the priority of traffic. It is an optional field. If it not passed, the value is DEFAULT"
  type        = string
  default     = null
}

variable "vxlan_network_identifier" {
  description = "(Optional) (Updatable) The virtual extensible LAN (VXLAN) network identifier (or VXLAN segment ID) that uniquely identifies the VXLAN."
  type        = string
  default     = null
}
