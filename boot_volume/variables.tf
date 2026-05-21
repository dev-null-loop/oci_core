variable "availability_domain" {
  description = "(Required) The availability domain of the volume. Omissible for cloning a volume. The new volume will be created in the availability domain of the source volume.  Example: `Uocm:PHX-AD-1`"
  type        = string
}

variable "autotune_policies" {
  description = "(Optional) (Updatable) The list of autotune policies to be enabled for this volume."
  type = list(object({
    autotune_type   = string
    max_vpus_per_gb = optional(string)
  }))
  default = []
}

variable "backup_policy_id" {
  description = "(Optional) If provided, specifies the ID of the boot volume backup policy to assign to the newly created boot volume. If omitted, no policy will be assigned. This field is deprecated. Use the `oci_core_volume_backup_policy_assignments` instead to assign a backup policy to a boot volume."
  type        = string
  default     = null
}

variable "boot_volume_replicas" {
  description = "(Optional) (Updatable) The list of boot volume replicas to be enabled for this boot volume in the specified destination availability domains."
  type = list(object({
    availability_domain = string
    display_name        = optional(string)
    xrr_kms_key_id      = optional(string)
  }))
  default = []
}

variable "boot_volume_replicas_deletion" {
  description = "(Optional) (Updatable) enable or disable boot volume replica"
  type        = bool
  default     = null
}

variable "cluster_placement_group_id" {
  description = "(Optional) The clusterPlacementGroup Id of the volume for volume placement."
  type        = string
  default     = null
}

variable "compartment_id" {
  description = "(Required) (Updatable) The OCID of the compartment that contains the boot volume."
  type        = string
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

variable "is_auto_tune_enabled" {
  description = "(Optional) (Updatable) Specifies whether the auto-tune performance is enabled for this boot volume. This field is deprecated. Use the `DetachedVolumeAutotunePolicy` instead to enable the volume for detached autotune."
  type        = bool
  default     = null
}

variable "kms_key_id" {
  description = "(Optional) (Updatable) The OCID of the Vault service key to assign as the master encryption key for the boot volume."
  type        = string
  default     = null
}

variable "size_in_gbs" {
  description = "(Optional) (Updatable) The size of the volume in GBs."
  type        = string
  default     = null
}

variable "source_details" {
  description = "(Required)"
  type = object({
    type                       = string
    change_block_size_in_bytes = optional(string)
    first_backup_id            = optional(string)
    id                         = optional(string)
    second_backup_id           = optional(string)
  })
}

variable "vpus_per_gb" {
  description = "(Optional) (Updatable) The number of volume performance units (VPUs) that will be applied to this volume per GB, representing the Block Volume service's elastic performance options. See [Block Volume Performance Levels](https://docs.cloud.oracle.com/iaas/Content/Block/Concepts/blockvolumeperformance.htm#perf_levels) for more information."
  type        = string
  default     = null
}

variable "xrc_kms_key_id" {
  description = "(Optional) The OCID of the Vault service key which is the master encryption key for the boot volume cross region backups, which will be used in the destination region to encrypt the backup's encryption keys. For more information about the Vault service and encryption keys, see [Overview of Vault service](https://docs.cloud.oracle.com/iaas/Content/KeyManagement/Concepts/keyoverview.htm) and [Using Keys](https://docs.cloud.oracle.com/iaas/Content/KeyManagement/Tasks/usingkeys.htm)."
  type        = string
  default     = null
}
