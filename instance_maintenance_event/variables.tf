variable "instance_maintenance_event_id" {
  description = "(Required) The OCID of the instance maintenance event."
  type        = string
}

variable "alternative_resolution_action" {
  description = "(Optional) (Updatable) One of the alternativeResolutionActions that was provided in the InstanceMaintenanceEvent."
  type        = string
  default     = null
}

variable "can_delete_local_storage" {
  description = "(Optional) (Updatable) This field is only applicable when setting the alternativeResolutionAction."
  type        = bool
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

variable "time_window_start" {
  description = "(Optional) (Updatable) The beginning of the time window when Maintenance is scheduled to begin. The Maintenance will not begin before this time."
  type        = string
  default     = null
}
