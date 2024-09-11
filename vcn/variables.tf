variable "byoipv6cidr_details" {
  description = "(Optional) The list of BYOIPv6 OCIDs and BYOIPv6 prefixes required to create a VCN that uses BYOIPv6 address ranges."
  type = object({
    byoipv6range_id = string
    ipv6cidr_block  = string
  })
  default = null
}

variable "compartment_id" {
  description = "(Required) (Updatable) The OCID of the compartment to contain the VCN."
  type        = string
}

variable "cidr_blocks" {
  description = "(Optional) (Updatable) The list of one or more IPv4 CIDR blocks for the VCN"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "dns_label" {
  description = "(Optional) A DNS label for the VCN, used in conjunction with the VNIC's hostname and subnet's DNS label to form a fully qualified domain name (FQDN) for each VNIC within a subnet."
  type        = string
  default     = null
}

variable "display_name" {
  description = "(Optional) (Updatable) A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  type        = string
  default     = null
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm)."
  type        = map(string)
  default     = null
}

variable "freeform_tags" {
  description = "Free form tags applied to organize and list multiple subnets."
  type        = map(string)
  default     = {}
}

variable "is_ipv6enabled" {
  description = "(Optional) Whether IPv6 is enabled for the VCN. Default is `false`. If enabled, Oracle will assign the VCN a IPv6 /56 CIDR block. You may skip having Oracle allocate the VCN a IPv6 /56 CIDR block by setting isOracleGuaAllocationEnabled to `false`. For important details about IPv6 addressing in a VCN, see [IPv6 Addresses](https://docs.cloud.oracle.com/iaas/Content/Network/Concepts/ipv6.htm).  Example: `true` "
  type        = bool
  default     = false
}

variable "ipv6private_cidr_blocks" {
  description = "(Optional) The list of one or more ULA or Private IPv6 CIDR blocks for the vcn that meets the following criteria:"
  type        = list(string)
  default     = []
}

# variable "is_oracle_gua_allocation_enabled" {
#   description = "(Optional) Specifies whether to skip Oracle allocated IPv6 GUA. By default, Oracle will allocate one GUA of /56 size for an IPv6 enabled VCN."
#   type        = bool
#   default     = false
# }
