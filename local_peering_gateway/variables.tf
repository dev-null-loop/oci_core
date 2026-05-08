variable "compartment_id" {
  description = "(Required) (Updatable) The OCID of the compartment containing the local peering gateway (LPG)."
  type        = string
}

variable "requestor" {
  description = "Configuration for the requestor side of the LPG pair."
  type = object({
    vcn_id         = string
    display_name   = optional(string, "requestor")
    route_table_id = optional(string)
    defined_tags   = optional(map(string), null)
    freeform_tags  = optional(map(string), {})
  })
}

variable "acceptor" {
  description = "Configuration for the acceptor side of the LPG pair."
  type = object({
    vcn_id         = string
    display_name   = optional(string, "acceptor")
    route_table_id = optional(string)
    defined_tags   = optional(map(string), null)
    freeform_tags  = optional(map(string), {})
  })
}
