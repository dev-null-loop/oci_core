variable "availability_domain" {
  description = "(Optional) Controls whether the VLAN is regional or specific to an availability domain. A regional VLAN has the flexibility to implement failover across availability domains. Previously, all VLANs were AD-specific."
  type        = string
  default     = null
}

variable "cidr_block" {
  description = "(Required) (Updatable) The range of IPv4 addresses that will be used for layer 3 communication with hosts outside the VLAN. The CIDR must maintain the following rules - . The CIDR block is valid and correctly formatted. b. The new range is within one of the parent VCN ranges."
  type        = string
}

variable "compartment_id" {
  description = "(Required) (Updatable) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the compartment to contain the VLAN."
  type        = string
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm)."
  type        = map(string)
  default     = null
}

variable "display_name" {
  description = "(Optional) (Updatable) A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  type        = string
  default     = null
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm)."
  type        = map(string)
  default     = {}
}

variable "nsg_ids" {
  description = "(Optional) (Updatable) A list of the OCIDs of the network security groups (NSGs) to add all VNICs in the VLAN to. For more information about NSGs, see [NetworkSecurityGroup](https://docs.cloud.oracle.com/iaas/api/#/en/iaas/latest/NetworkSecurityGroup/)."
  type        = list(string)
  default     = []
}

variable "route_table_id" {
  description = "(Optional) (Updatable) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the route table the VLAN will use. If you don't provide a value, the VLAN uses the VCN's default route table."
  type        = string
  default     = null
}

variable "vcn_id" {
  description = "(Required) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the VCN to contain the VLAN."
  type        = string
}

variable "vlan_tag" {
  description = "(Optional) The IEEE 802.1Q VLAN tag for this VLAN. The value must be unique across all VLANs in the VCN. If you don't provide a value, Oracle assigns one. You cannot change the value later. VLAN tag 0 is reserved for use by Oracle."
  type        = string
  default     = null
}
