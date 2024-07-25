variable "availability_domain" {
  description = "(Required) The availability domain of the volume group."
  type        = number
}

variable "compartment_id" {
  description = "(Required) (Updatable) The OCID of the compartment that contains the volume group."
  type        = string
}

variable "backup_policy_id" {
  description = "(Optional) If provided, specifies the ID of the volume backup policy to assign to the newly created volume group. If omitted, no policy will be assigned."
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
  default     = {}
}

variable "source_details" {
  description = "(Required) Specifies the source for a volume group."
  type = object({
    type                    = string
    volume_group_backup_id  = optional(string)
    volume_group_id         = optional(string)
    volume_group_replica_id = optional(string)
    volume_ids              = optional(list(string))
  })
}

variable "volume_group_replicas" {
  description = "(Optional) (Updatable) The list of volume group replicas that this volume group will be enabled to have in the specified destination availability domains."
  type = list(object({
    availability_domain = string
    display_name        = optional(string)
    region              = string
  }))
  default = []

  validation {
    condition     = alltrue([for i in var.volume_group_replicas : can(regex("^(....):(..)-(.*)-[1-9]-(..)-[1-3]", i.availability_domain))])
    error_message = "Error: volume group replica availability_domain format is xxxx:xx-xxxxxxxx-[1-9]-AD-[1-3], e.g vuTf:eu-amsterdam-1-AD-3"
  }
}

variable "volume_ids" {
  description = "(Optional) (Updatable) Use this for update operation only. This field is not supported during creation. For create use `volume_ids` under `source_details`."
  type        = list(string)
  default     = null
}
