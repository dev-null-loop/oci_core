variable "compute_host_id" {
  description = "(Required) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the compute host."
  type        = string
}

variable "compute_host_group_id" {
  description = "(Optional) (Updatable) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) for the Customer-unique host group associated with the Compute Bare Metal Host."
  type        = string
  default     = null
}

variable "configuration_action_type" {
  description = "(Optional) (Updatable) The configuration action to next occur on the host if pinning its firmware with a host group."
  type        = string
  default     = null
}
