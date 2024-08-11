variable "compartment_id" {
  description = "(Optional) (Updatable) The OCID of the compartment that will contain the volume group backup. This parameter is optional, by default backup will be created in the same compartment and source volume group."
  type        = string
  default     = null
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm)."
  type        = map(string)
  default     = null
}

variable "display_name" {
  description = "(Optional) (Updatable) A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  type        = string
  default     = null
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm)."
  type        = map(string)
  default     = null
}

variable "type" {
  description = "(Optional) The type of backup to create. If omitted, defaults to incremental. Allowed values are FULL and INCREMENTAL."
  type        = string
  default     = "INCREMENTAL"
}

variable "volume_group_id" {
  description = "(Required) The OCID of the volume group that needs to be backed up."
  type        = string
}


variable "source_details" {
  description = "(Optional) Details of the volume group backup source in the cloud."
  type = object({
    kms_key_id             = string
    region                 = string
    volume_group_backup_id = string
  })
  nullable = true
  default  = null
}
