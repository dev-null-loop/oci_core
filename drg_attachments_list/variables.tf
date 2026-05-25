variable "drg_id" {
  description = "(Required) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the DRG."
  type        = string
}

variable "attachment_type" {
  description = "(Optional) The type for the network resource attached to the DRG."
  type        = string
  default     = null
}

variable "is_cross_tenancy" {
  description = "(Optional) Whether the DRG attachment lives in a different tenancy than the DRG."
  type        = bool
  default     = null
}
