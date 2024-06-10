variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm)."
  type        = map(string)
  default     = null
}

variable "display_name" {
  description = "(Optional) (Updatable) A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  type        = string
  default     = "route_distribution"
}

variable "distribution_type" {
  description = "(Required) Whether this distribution defines how routes get imported into route tables or exported through DRG attachments."
  type        = string
  default     = "IMPORT"
}

variable "drg_id" {
  description = "(Required) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the DRG the DRG route table belongs to."
  type        = string
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm)."
  type        = map(string)
  default     = {}
}
