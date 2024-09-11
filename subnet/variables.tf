variable "availability_domain" {
  description = "(Optional) Controls whether the subnet is regional or specific to an availability domain. Oracle recommends creating regional subnets because they're more flexible and make it easier to implement failover across availability domains. Originally, AD-specific subnets were the only kind available to use."
  type        = number
  default     = null
}
variable "cidr_block" {
  description = "(Required) (Updatable) The CIDR IP address range of the subnet."
  type        = string
}

variable "compartment_id" {
  description = "(Required) (Updatable) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the compartment to contain the subnet."
  type        = string
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm)."
  type        = map(string)
  default     = null
}

variable "dhcp_options_id" {
  description = "(Optional) (Updatable) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the set of DHCP options the subnet will use. If you don't provide a value, the subnet uses the VCN's default set of DHCP options."
  type        = string
  default     = null
}

variable "display_name" {
  description = "(Optional) (Updatable) A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  type        = string
  default     = null
}

variable "dns_label" {
  description = "(Optional) A DNS label for the subnet, used in conjunction with the VNIC's hostname and VCN's DNS label to form a fully qualified domain name (FQDN) for each VNIC within this subnet (for example, `bminstance1.subnet123.vcn1.oraclevcn.com`). Must be an alphanumeric string that begins with a letter and is unique within the VCN. The value cannot be changed."
  type        = string
  default     = null
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm)."
  type        = map(string)
  default     = {}
}

variable "ipv6cidr_block" {
  description = "(Optional) (Updatable) Use this to enable IPv6 addressing for this subnet. The VCN must be enabled for IPv6. You can't change this subnet characteristic later. All subnets are /64 in size. The subnet portion of the IPv6 address is the fourth hextet from the left (1111 in the following example)."
  type        = string
  default     = null
}

variable "ipv6cidr_blocks" {
  description = "(Optional) (Updatable) The list of all IPv6 prefixes (Oracle allocated IPv6 GUA, ULA or private IPv6 prefixes, BYOIPv6 prefixes) for the subnet."
  type        = list(string)
  default     = []
}

variable "prohibit_internet_ingress" {
  description = "(Optional) Whether to disallow ingress internet traffic to VNICs within this subnet. Defaults to false."
  type        = bool
  default     = false
}

variable "prohibit_public_ip_on_vnic" {
  description = "(Optional) Whether VNICs within this subnet can have public IP addresses. Defaults to false, which means VNICs created in this subnet will automatically be assigned public IP addresses unless specified otherwise during instance launch or VNIC creation (with the `assignPublicIp` flag in [CreateVnicDetails](https://docs.cloud.oracle.com/iaas/api/#/en/iaas/latest/CreateVnicDetails/)). If `prohibitPublicIpOnVnic` is set to true, VNICs created in this subnet cannot have public IP addresses (that is, it's a private subnet)."
  type        = bool
  default     = false
}

variable "route_table_id" {
  description = "(Optional) (Updatable) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the route table the subnet will use. If you don't provide a value, the subnet uses the VCN's default route table."
  type        = string
  default     = null
}

variable "security_list_ids" {
  description = "(Optional) (Updatable) The OCIDs of the security list or lists the subnet will use. If you don't provide a value, the subnet uses the VCN's default security list. Remember that security lists are associated *with the subnet*, but the rules are applied to the individual VNICs in the subnet."
  type        = list(string)
  default     = []
}

variable "vcn_id" {
  description = "(Required) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the VCN to contain the subnet."
  type        = string
}
