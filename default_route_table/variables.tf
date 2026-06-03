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

variable "route_rules" {
  description = ""
  type = list(object({
    cidr_block        = optional(string)
    description       = optional(string)
    destination       = optional(string)
    destination_type  = optional(string)
    network_entity_id = string
    route_type        = optional(string)
  }))
  default = []
}
