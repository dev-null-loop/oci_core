variable "compartment_id" {
  description = ""
  type        = string
  default     = null
}

variable "defined_tags" {
  description = ""
  type        = map(string)
  default     = null
}

variable "display_name" {
  description = ""
  type        = string
  default     = null
}

variable "freeform_tags" {
  description = ""
  type        = map(string)
  default     = {}
}

variable "manage_default_resource_id" {
  description = ""
  type        = string
}

variable "egress_security_rules" {
  description = ""
  type = list(object({
    description      = optional(string)
    destination      = string
    destination_type = optional(string)
    protocol         = string
    stateless        = optional(bool)
    icmp_options = optional(object({
      code = optional(number)
      type = number
    }), null)
    tcp_options = optional(object({
      max = optional(number)
      min = optional(number)
      source_port_range = optional(object({
        max = number
        min = number
      }), null)
    }), null)
    udp_options = optional(object({
      max = optional(number)
      min = optional(number)
      source_port_range = optional(object({
        max = number
        min = number
      }), null)
    }), null)
  }))
  default = []
}

variable "ingress_security_rules" {
  description = ""
  type = list(object({
    description = optional(string)
    protocol    = string
    source      = string
    source_type = optional(string)
    stateless   = optional(bool)
    icmp_options = optional(object({
      code = optional(number)
      type = number
    }), null)
    tcp_options = optional(object({
      max = optional(number)
      min = optional(number)
      source_port_range = optional(object({
        max = number
        min = number
      }), null)
    }), null)
    udp_options = optional(object({
      max = optional(number)
      min = optional(number)
      source_port_range = optional(object({
        max = number
        min = number
      }), null)
    }), null)
  }))
  default = []
}
