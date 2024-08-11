variable "compartment_id" {
  description = "(Required) The OCID of the compartment."
  type        = string
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm)."
  type        = map(string)
  default     = {}
}

variable "destination_region" {
  description = "(Optional) (Updatable) The paired destination region for copying scheduled backups to. Example: `us-ashburn-1`. See [Region Pairs](https://docs.cloud.oracle.com/iaas/Content/Block/Tasks/schedulingvolumebackups.htm#RegionPairs) for details about paired regions."
  type        = string
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

variable "schedules" {
  description = "(Optional) (Updatable) The collection of schedules for the volume backup policy. See see [Schedules](https://docs.cloud.oracle.com/iaas/Content/Block/Tasks/schedulingvolumebackups.htm#schedules) in [Policy-Based Backups](https://docs.cloud.oracle.com/iaas/Content/Block/Tasks/schedulingvolumebackups.htm) for more information."
  type = object({
    backup_type       = optional(string)
    period            = optional(string)
    retention_seconds = optional(number)
    day_of_month      = optional(number)
    day_of_week       = optional(string)
    hour_of_day       = optional(number)
    month             = optional(string)
    offset_seconds    = optional(number)
    offset_type       = optional(string)
    time_zone         = optional(string)
  })
  nullable = true
  default  = null
}
