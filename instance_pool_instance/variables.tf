variable "instance_id" {
  description = "(Required) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the instance."
  type        = string
}

variable "instance_pool_id" {
  description = "(Required) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the instance pool."
  type        = string
}

variable "decrement_size_on_delete" {
  description = "(Optional) Whether detaching this instance should decrement the instance pool size."
  type        = bool
  default     = null
}

variable "auto_terminate_instance_on_delete" {
  description = "(Optional) Whether detaching this instance should auto-terminate the instance."
  type        = bool
  default     = null
}
