variable "compartment_id" {
  description = "The OCID of the compartment to contain the network security group."
  type        = string
}

variable "vcn_id" {
  description = "The OCID of the VCN the network security group is attached to."
  type        = string
}

variable "display_name" {
  description = "Name of the network security group"
  type        = string
}

variable "rules" {
  description = "nsg parameters: protocol, stateless, direction, source, source type, destination, destination type, tcp options, udp options "
  type = map(object({
    protocol         = string
    direction        = string
    destination      = optional(string)
    destination_type = optional(string)
    icmp_options = optional(object({
      type = optional(string)
      code = optional(number)
    }))
    source      = string
    source_type = string
    stateless   = string
    tcp_options = optional(object({
      destination_ports = optional(object({
	min = number
	max = number
      }))
      source_ports = optional(object({
	min = number
	max = number
      }))
    }))
    udp_options = optional(object({
      destination_ports = optional(object({
	min = number
	max = number
      }))
      source_ports = optional(object({
	min = number
	max = number
      }))
    }))
  }))
  default = null
}

variable "freeform_tags" {
  description = "Free form tags applied to organize and list multiple network security group"
  type        = map(string)
  default     = {}
}
