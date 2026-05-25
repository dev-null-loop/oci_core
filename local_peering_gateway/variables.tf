variable "compartment_id" {
  description = "(Required) (Updatable) The OCID of the compartment containing the local peering gateway (LPG)."
  type        = string
}

variable "requestor" {
  description = "Configuration for the requestor LPG in the pair."
  type = object({
    vcn_id         = string
    display_name   = optional(string)
    route_table_id = optional(string)
    defined_tags   = optional(map(string))
    freeform_tags  = optional(map(string), {})
  })
}

variable "acceptor" {
  description = "Configuration for the acceptor LPG in the pair."
  type = object({
    vcn_id         = string
    display_name   = optional(string)
    route_table_id = optional(string)
    defined_tags   = optional(map(string))
    freeform_tags  = optional(map(string), {})
  })
}
