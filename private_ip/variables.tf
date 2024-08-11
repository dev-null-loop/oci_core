variable "display_name" {
  description = "(Optional) (Updatable) A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  type        = string
}

variable "freeform_tags" {
  description = "Free form tags applied to organize and list multiple DRGs"
  type        = map(string)
  default     = {}
}

variable "hostname_label" {
  description = " (Optional) (Updatable) The hostname for the private IP. Used for DNS. The value is the hostname portion of the private IP's fully qualified domain name (FQDN) (for example, bminstance1 in FQDN bminstance1.subnet123.vcn1.oraclevcn.com). Must be unique across all VNICs in the subnet and comply with RFC 952 and RFC 1123."
  type        = string
}

variable "ip_address" {
  description = "Optional) A private IP address of your choice. Must be an available IP address within the subnet's CIDR. If you don't specify a value, Oracle automatically assigns a private IP address from the subnet. Example: 10.0.3.3"
  type        = string
}

variable "vlan_id" {
  description = "(Optional) Use this attribute only with the Oracle Cloud VMware Solution. The OCID of the VLAN from which the private IP is to be drawn. The IP address, if supplied, must be valid for the given VLAN."
  type        = string
  default     = ""
}

variable "vnic_id" {
  description = "(Optional) (Updatable) The OCID of the VNIC to assign the private IP to. The VNIC and private IP must be in the same subnet."
  type        = string
}
