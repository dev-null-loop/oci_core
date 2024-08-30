variable "compartment_id" {
  description = "(Required) (Updatable) The OCID of the compartment that contains the volume."
  type        = string
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
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm)."
  type        = map(string)
  default     = {}
}

variable "kms_key_id" {
  description = "(Optional) (Updatable) The OCID of the Vault service key to assign as the master encryption key for the volume. "
  type        = string
  default     = null
}

variable "size_in_gbs" {
  description = "(Optional) (Updatable) The size of the volume in GBs."
  type        = number
  default     = 50
}

variable "availability_domain" {
  description = "(Optional) The availability domain of the volume. Omissible for cloning a volume. The new volume will be created in the availability domain of the source volume."
  type        = number
  default     = 1
}

variable "vpus_per_gb" {
  description = "(Optional) (Updatable) The number of volume performance units (VPUs) that will be applied to this volume per GB, representing the Block Volume service's elastic performance options. See [Block Volume Performance Levels](https://docs.cloud.oracle.com/iaas/Content/Block/Concepts/blockvolumeperformance.htm#perf_levels) for more information."
  type        = number
  default     = 10
}

variable "autotune_policies" {
  description = "(Optional) (Updatable) The list of autotune policies to be enabled for this volume."
  type = object({
    type            = string
    max_vpus_per_gb = number
  })
  nullable = true
  default  = null
}

variable "block_volume_replicas" {
  description = "(Optional) (Updatable) The list of block volume replicas to be enabled for this volume in the specified destination availability domains."
  type = object({
    availability_domain = string
    display_name        = optional(string)
  })
  nullable = true
  default  = null
}

variable "source_details" {
  description = "(Optional). id - (Required) The OCID of the block volume replica. type - (Required) The type can be one of these values: blockVolumeReplica, volume, volumeBackup"
  type = object({
    id   = string
    type = string
  })
  nullable = true
  default  = null
}
