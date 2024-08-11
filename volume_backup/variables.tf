variable "volume_id" {
  description = "(Optional) The OCID of the volume that needs to be backed up.**Note: To create the resource either `volume_id` or `source_details` is required to be set."
  type        = string
  default     = null
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm)."
  type        = map(string)
  default     = {}
}

variable "display_name" {
  description = "(Optional) (Updatable) A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  type        = string
  default     = null
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm)."
  type        = map(string)
  default     = {}
}

variable "kms_key_id" {
  description = "(Optional) (Updatable) The OCID of the Vault service key which is the master encryption key for the volume backup. For more information about the Vault service and encryption keys, see [Overview of Vault service](https://docs.cloud.oracle.com/iaas/Content/KeyManagement/Concepts/keyoverview.htm) and [Using Keys](https://docs.cloud.oracle.com/iaas/Content/KeyManagement/Tasks/usingkeys.htm)."
  type        = string
  default     = null
}

variable "type" {
  description = "(Optional) The type of backup to create. If omitted, defaults to INCREMENTAL. Supported values are 'FULL' or 'INCREMENTAL'."
  type        = string
  default     = null
}

variable "source_details" {
  description = "(Optional) Details of the volume backup source in the cloud."
  type = object({
    kms_key_id       = string
    region           = string
    volume_backup_id = string
  })
  nullable = true
  default  = null
}
