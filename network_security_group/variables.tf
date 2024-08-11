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

variable "rules_params" {
  description = "nsg parameters: protocol, stateless, direction, source, source type, destination, destination type, tcp options, udp options "
  type = map(object({
    protocol         = string
    stateless        = string
    direction        = string
    source           = string
    source_type      = string
    destination      = string
    destination_type = optional(string)
  }))
}

variable "tcp_options" {
  type = object({
    destination_ports = optional(object({
      min = number
      max = number
    }))
    source_ports = optional(object({
      min = number
      max = number
    }))
  })
  default = null
}

variable "udp_options" {
  type = object({
    destination_ports = optional(object({
      min = number
      max = number
    }))
    source_ports = optional(object({
      min = number
      max = number
    }))
  })
  default = null
}

variable "freeform_tags" {
  description = "Free form tags applied to organize and list multiple network security group"
  type        = map(string)
  default     = {}
}
