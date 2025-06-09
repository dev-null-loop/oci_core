variable "default_security_list_id" {
  type = string
}

variable "compartment_id" {
  description = "(Required) The OCID of the compartment to contain the security lists."
  type        = string
}

variable "vcn_id" {
  description = "(Required) The OCID of the VCN the security list belongs to."
  type        = string
}

variable "display_name" {
  description = "(Optional) (Updatable) A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  type        = string
}

variable "ingress_rules" {
  description = "(Optional) (Updatable) Rules for allowing ingress IP packets."
  type = list(object({
    description      = optional(string)
    stateless        = string
    protocol         = string
    source           = string
    source_type      = string
    destination_type = optional(string)
    tcp_options = optional(object({
      min = number
      max = number
      source_port_range = optional(object({
	min = number
	max = number
      }))
    }))
    udp_options = optional(object({
      min = number
      max = number
      source_port_range = optional(object({
	min = number
	max = number
      }))
    }))
    icmp_options = optional(object({
      type = number
      code = number
    }))
  }))
  default = []
}

variable "egress_rules" {
  description = "(Optional) (Updatable) Rules for allowing egress IP packets."
  type = list(object({
    description      = optional(string)
    destination      = string
    destination_type = optional(string)
    protocol         = string
    stateless        = optional(string)
    icmp_options = optional(object({
      type = number
      code = number
    }))
    tcp_options = optional(object({
      min = number
      max = number
      source_port_range = optional(object({
	min = number
	max = number
      }))
    }))
    udp_options = optional(object({
      min = number
      max = number
      source_port_range = optional(object({
	min = number
	max = number
      }))
    }))
  }))
  default = []
}

variable "freeform_tags" {
  description = "Free form tags applied to organize and list multiple security lists."
  type        = map(string)
  default     = {}
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm)"
  type        = map(string)
  default     = null
}
