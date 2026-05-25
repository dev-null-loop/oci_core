variable "cidr_prefix_length" {
  description = "(Optional) An optional field that when combined with the ipAddress field, will be used to allocate secondary IPv4 CIDRs. The CIDR range created by this combination must be within the subnet's CIDR  and the CIDR range should not collide with any existing IPv4 address allocation. The VNIC ID specified in the request object should not already been assigned more than the max IPv4 addresses. If you don't specify a value, this option will be ignored.  Example: 18"
  type        = number
  default     = null
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

variable "freeform_tags" {
  description = "(Optional) (Updatable) Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm).  Example: `{\"Department\": \"Finance\"}`"
  type        = map(string)
  default     = {}
}

variable "hostname_label" {
  description = "(Optional) (Updatable) The hostname for the private IP. Used for DNS. The value is the hostname portion of the private IP's fully qualified domain name (FQDN) (for example, `bminstance1` in FQDN `bminstance1.subnet123.vcn1.oraclevcn.com`). Must be unique across all VNICs in the subnet and comply with [RFC 952](https://tools.ietf.org/html/rfc952) and [RFC 1123](https://tools.ietf.org/html/rfc1123)."
  type        = string
  default     = null
}

variable "ip_address" {
  description = "(Optional) A private IP address of your choice. Must be an available IP address within the subnet's CIDR. If you don't specify a value, Oracle automatically assigns a private IP address from the subnet.  Example: `10.0.3.3`"
  type        = string
  default     = null
}

variable "ipv4subnet_cidr_at_creation" {
  description = "(Optional) Any one of the IPv4 CIDRs allocated to the subnet."
  type        = string
  default     = null
}

variable "lifetime" {
  description = "(Optional) (Updatable) Lifetime of the IP address. There are two types of IPs:"
  type        = string
  default     = null
}

variable "route_table_id" {
  description = "(Optional) (Updatable) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the route table the IP address or VNIC will use. For more information, see [Source Based Routing](https://docs.oracle.com/iaas/Content/Network/Tasks/managingroutetables.htm#Overview_of_Routing_for_Your_VCN__source_routing)."
  type        = string
  default     = null
}

variable "subnet_id" {
  description = "(Optional) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the subnet from which the private IP is to be drawn. The IP address, *if supplied*, must be valid for the given subnet."
  type        = string
  default     = null
}

variable "vlan_id" {
  description = "(Optional) Use this attribute only with the Oracle Cloud VMware Solution."
  type        = string
  default     = null
}

variable "vnic_id" {
  description = "(Optional) (Updatable) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the VNIC to assign the private IP to. The VNIC and private IP must be in the same subnet."
  type        = string
  default     = null
}
