variable "create_vnic_details" {
  description = "(Required) (Updatable) Contains properties for a VNIC. You use this object when creating the primary VNIC during instance launch or when creating a secondary VNIC. For more information about VNICs, see [Virtual Network Interface Cards (VNICs)](https://docs.cloud.oracle.com/iaas/Content/Network/Tasks/managingVNICs.htm)."
  type = object({
    assign_ipv6ip                            = optional(bool)
    assign_private_dns_record                = optional(bool)
    assign_private_dns_record                = optional(bool)
    assign_public_ip                         = optional(bool)
    defined_tags                             = optional(map(string))
    display_name                             = optional(string)
    freeform_tags                            = optional(map(string))
    hostname_label                           = optional(string)
    ipv6address_ipv6subnet_cidr_pair_details = optional(list(string))
    nsg_ids                                  = optional(list(string))
    private_ip                               = optional(string)
    security_attributes                      = optional(string)
    skip_source_dest_check                   = optional(bool)
    subnet_id                                = optional(string)
    vlan_id                                  = optional(string)
  })
}

variable "display_name" {
  description = "(Optional) A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information. "
  type        = string
  default     = null
}

variable "instance_id" {
  description = "(Required) The OCID of the instance"
  type        = string
}

variable "nic_index" {
  description = "(Optional) Which physical network interface card (NIC) the VNIC will use. Defaults to 0. Certain bare metal instance shapes have two active physical NICs (0 and 1). If you add a secondary VNIC to one of these instances, you can specify which NIC the VNIC will use. For more information, see [Virtual Network Interface Cards (VNICs)](https://docs.cloud.oracle.com/iaas/Content/Network/Tasks/managingVNICs.htm)."
  type        = number
  default     = 0
}
