variable "compartment_id" {
  description = "(Required) (Updatable) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the compartment to contain the cross-connect group."
  type        = string
}

variable "customer_reference_name" {
  description = "(Optional) (Updatable) A reference name or identifier for the physical fiber connection that this cross-connect group uses."
  type        = string
  default     = null
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm).  Example: `{\"Operations.CostCenter\": \"42\"}`"
  type        = map(string)
  default     = null
}

variable "display_name" {
  description = "(Optional) (Updatable) A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  type        = string
  default     = null
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm).  Example: `{\"Department\": \"Finance\"}`"
  type        = map(string)
  default     = {}
}

variable "macsec_properties" {
  description = "(Optional) (Updatable) Properties used to configure MACsec (if capable)."
  type = object({
    encryption_cipher              = optional(string)
    is_unprotected_traffic_allowed = optional(bool)
    primary_key = optional(object({
      connectivity_association_key_secret_id       = string
      connectivity_association_key_secret_version  = optional(string)
      connectivity_association_name_secret_id      = string
      connectivity_association_name_secret_version = optional(string)
    }))
    state = string
  })
  default = null
}
