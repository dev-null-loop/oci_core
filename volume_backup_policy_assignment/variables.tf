variable "asset_id" {
  description = "(Required) The OCID of the volume or volume group to assign the policy to."
  type        = string
}

variable "policy_id" {
  description = "(Required) The OCID of the volume backup policy to assign to the volume."
  type        = string
}

variable "xrc_kms_key_id" {
  description = "(Optional) The OCID of the Vault service key which is the master encryption key for the block / boot volume cross region backups, which will be used in the destination region to encrypt the backup's encryption keys. For more information about the Vault service and encryption keys, see [Overview of Vault service](https://docs.cloud.oracle.com/iaas/Content/KeyManagement/Concepts/keyoverview.htm) and [Using Keys](https://docs.cloud.oracle.com/iaas/Content/KeyManagement/Tasks/usingkeys.htm)."
  type        = string
  default     = null
}
