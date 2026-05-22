variable "byoipv6cidr_details" {
  description = "(Optional) The list of BYOIPv6 OCIDs and BYOIPv6 prefixes required to create a VCN that uses BYOIPv6 address ranges."
  type = list(object({
    byoipv6range_id = string
    ipv6cidr_block  = string
  }))
  default = []
}

variable "compartment_id" {
  description = "(Required) (Updatable) The OCID of the compartment to contain the VCN."
  type        = string
}

variable "cidr_blocks" {
  description = "(Optional) (Updatable) The list of one or more IPv4 CIDR blocks for the VCN"
  type        = list(string)
  default     = ["10.0.0.0/16"]
  validation {
    condition = alltrue([
      for cidr in var.cidr_blocks :
      can(cidrhost(cidr, 0)) && contains([
        for prefix in range(16, 31) : tostring(prefix)
      ], try(element(split("/", cidr), 1), ""))
    ])
    error_message = "Each VCN CIDR block must be valid and between /16 and /30."
  }
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
  description = "(Optional) (Updatable) Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm).  Example: `{\"Department\": \"Finance\"}`"
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

variable "is_oracle_gua_allocation_enabled" {
  description = "(Optional) Specifies whether Oracle allocates an IPv6 global unicast address (GUA) prefix to the VCN. By default, Oracle allocates one GUA prefix of /56 size for an IPv6-enabled VCN if this value is not explicitly set to false. When this value is changed from `true` to `false` on an existing VCN, the provider removes that prefix from the existing VCN. Customers must manage `is_oracle_gua_allocation_enabled` exclusively through Terraform. Changing Oracle GUA allocation outside Terraform can cause Terraform state to differ from the VCN configuration in Oracle Cloud Infrastructure and can result in unexpected plans or failed updates."
  type        = bool
  default     = null
}

variable "security_attributes" {
  description = "(Optional) (Updatable) Security Attributes for this resource. This is unique to ZPR, and helps identify which resources are allowed to be accessed by what permission controls.  Example: `{\"Oracle-DataSecurity-ZPR.MaxEgressCount.value\": \"42\", \"Oracle-DataSecurity-ZPR.MaxEgressCount.mode\": \"audit\"}`"
  type        = map(string)
  default     = {}
}

variable "lookup_dns_resolver_id" {
  description = "(Optional) Whether to query the asynchronously created DNS resolver association after VCN creation. Disable this if callers do not need `dns_resolver_id` and you want to avoid the provider workaround delay."
  type        = bool
  default     = true
}

variable "dns_resolver_lookup_wait_duration" {
  description = "(Optional) How long to wait after VCN creation before querying the DNS resolver association data source workaround described in README.md."
  type        = string
  default     = "5s"
}
