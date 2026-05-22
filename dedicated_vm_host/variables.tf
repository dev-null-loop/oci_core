variable "availability_domain" {
  description = "(Required) The availability domain of the dedicated virtual machine host.  Example: `Uocm:PHX-AD-1`"
  type        = string
}

variable "capacity_config" {
  description = "(Optional) The capacity configuration selected to be configured for the Dedicated Virtual Machine host."
  type        = string
  default     = null
}

variable "compartment_id" {
  description = "(Required) (Updatable) The OCID of the compartment."
  type        = string
}

variable "dedicated_vm_host_shape" {
  description = "(Required) The dedicated virtual machine host shape. The shape determines the number of CPUs and other resources available for VM instances launched on the dedicated virtual machine host."
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

variable "fault_domain" {
  description = "(Optional) The fault domain for the dedicated virtual machine host's assigned instances."
  type        = string
  default     = null
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm).  Example: `{\"Department\": \"Finance\"}`"
  type        = map(string)
  default     = {}
}

variable "is_memory_encryption_enabled" {
  description = "(Optional) Specifies if the Dedicated Virtual Machine Host (DVMH) is restricted to running only Confidential VMs. If `true`, only Confidential VMs can be launched. If `false`, Confidential VMs cannot be launched."
  type        = bool
  default     = null
}

variable "placement_constraint_details" {
  description = "(Optional) The details for providing placement constraints."
  type = object({
    compute_bare_metal_host_id = optional(string)
    type                       = string
  })
  default = null
}
