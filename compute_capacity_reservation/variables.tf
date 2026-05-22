variable "availability_domain" {
  description = "(Required) The availability domain of this compute capacity reservation.  Example: `Uocm:PHX-AD-1`"
  type        = string
}

variable "compartment_id" {
  description = "(Required) (Updatable) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the compartment containing the capacity reservation."
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

variable "instance_reservation_configs" {
  description = "(Optional) (Updatable) The capacity configurations for the capacity reservation."
  type = list(object({
    cluster_config = optional(object({
      hpc_island_id     = string
      network_block_ids = optional(list(string), [])
    }))
    cluster_placement_group_id = optional(string)
    fault_domain               = optional(string)
    instance_shape             = string
    instance_shape_config = optional(object({
      memory_in_gbs       = optional(number)
      ocpus               = optional(number)
      resource_management = optional(string)
    }))
    reserved_count = string
  }))
  default = []
}

variable "is_default_reservation" {
  description = "(Optional) (Updatable) Whether this capacity reservation is the default. For more information, see [Capacity Reservations](https://docs.cloud.oracle.com/iaas/Content/Compute/Tasks/reserve-capacity.htm#default)."
  type        = bool
  default     = null
}
