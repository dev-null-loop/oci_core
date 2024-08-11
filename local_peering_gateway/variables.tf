variable "compartment_id" {
  description = "(Required) (Updatable) The OCID of the compartment containing the local peering gateway (LPG)."
  type        = string
}

variable "vcn_ids" {
  type = map(string)
}

variable "display_name" {
  description = "(Optional) (Updatable) A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  type        = string
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace."
  type        = map(string)
  default     = {}
}
