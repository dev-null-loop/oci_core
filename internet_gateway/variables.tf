variable "compartment_id" {
  description = "The OCID of the compartment to contain the internet gateway."
  type        = string
}

variable "vcn_id" {
  description = "The OCID of the VCN the Internet Gateway is attached to."
  type        = string
}

variable "display_name" {
  description = "Name of the internet gateway"
  type        = string
}

variable "freeform_tags" {
  description = "Free form tags applied to organize and list multiple internet gateways"
  type        = map(string)
  default     = {}
}
