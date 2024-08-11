variable "compartment_id" {
  description = "The OCID of the compartment to contain the NAT gateway."
  type        = string
}

variable "vcn_id" {
  description = "The OCID of the VCN the NAT Gateway is attached to."
  type        = string
}

variable "display_name" {
  description = "Name of the NAT gateway"
  type        = string
}

variable "freeform_tags" {
  description = "Free form tags applied to organize and list multiple NAT gateways"
  type        = map(string)
  default     = {}
}
