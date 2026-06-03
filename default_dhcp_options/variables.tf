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

variable "domain_name_type" {
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

variable "options" {
  description = ""
  type = list(object({
    custom_dns_servers  = optional(list(string), [])
    search_domain_names = optional(list(string), [])
    server_type         = optional(string)
    type                = string
  }))
}
