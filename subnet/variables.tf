variable "cidr_block" {
  description = "The CIDR IP address range of the subnet."
  type        = string
}

variable "compartment_id" {
  description = "The OCID of the compartment to contain the subnet."
  type        = string
}

variable "vcn_id" {
  description = "The OCID of the VCN the service gateway is attached to."
  type        = string
}

variable "display_name" {
  description = "(Optional) (Updatable) A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  type        = string
}

variable "dns_label" {
  description = "A DNS label for the subnet, used in conjunction with the VNIC's hostname and VCN's DNS label to form a fully qualified domain name (FQDN) for each VNIC within this subnet"
  type        = string
}

variable "freeform_tags" {
  description = "Free form tags applied to organize and list multiple subnets."
  type        = map(string)
  default     = {}
}

variable "is_subnet_private" {
  description = "(Optional) Whether VNICs within this subnet can have public IP addresses. Defaults to false, which means VNICs created in this subnet will automatically be assigned public IP addresses unless specified otherwise during instance launch or VNIC creation (with the `assignPublicIp` flag in [CreateVnicDetails](https://docs.cloud.oracle.com/iaas/api/#/en/iaas/latest/CreateVnicDetails/)). If `prohibitPublicIpOnVnic` is set to true, VNICs created in this subnet cannot have public IP addresses (that is, it's a private subnet)."
  type        = string
  default     = true
}

variable "route_table_id" {
  description = "(Optional) (Updatable) The OCID of the route table the subnet will use. If you don't provide a value, the subnet uses the VCN's default route table."
  type        = string
  default     = null
}

variable "security_list_ids" {
  description = "(Optional) (Updatable) The OCIDs of the security list or lists the subnet will use. If you don't provide a value, the subnet uses the VCN's default security list. Remember that security lists are associated *with the subnet*, but the rules are applied to the individual VNICs in the subnet."
  type        = list(string)
  default     = null
}
