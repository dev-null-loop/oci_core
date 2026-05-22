variable "compute_gpu_memory_fabric_id" {
  description = "(Required) The OCID of the compute GPU memory fabric."
  type        = string
}

variable "compartment_id" {
  description = "(Optional) (Updatable) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) for the compartment. This should always be the root compartment."
  type        = string
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

variable "memory_fabric_preferences" {
  description = "(Optional) (Updatable) The preference object specified by customer. Contains customerDesiredFirmwareBundleId, fabricRecycleLevel."
  type = object({
    customer_desired_firmware_bundle_id = optional(string)
    fabric_recycle_level                = optional(string)
  })
  default = null
}
