variable "asset_id" {
  description = "(Required) The OCID of the volume to assign the policy to."
  type        = string
}

variable "policy_id" {
  description = "(Required) The OCID of the volume backup policy to assign to the volume."
  type        = string
}
