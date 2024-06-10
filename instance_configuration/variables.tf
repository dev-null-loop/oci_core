variable "compartment_id" {
  description = "(Required) (Updatable) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the compartment containing the instance configuration."
  type        = string
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm)."
  type        = map(string)
  default     = null
}

variable "availability_domain" {
  description = "(Applicable when instance_type=compute) The availability domain of the volume.  Example: `Uocm:PHX-AD-1`"
  type        = number
  default     = 1
}

variable "display_name" {
  description = "(Optional) (Updatable) A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  type        = string
  default     = "ic"
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm)."
  type        = map(string)
  default     = {}
}

variable "instance_type" {
  description = "(Required) The type of instance details. Supported instanceType is compute"
  type        = string
}

variable "create_details" {
  description = " (Applicable when instance_type=compute) Creates a new block volume. Please see [CreateVolumeDetails](https://docs.cloud.oracle.com/iaas/api/#/en/iaas/latest/CreateVolumeDetails/)"
  type = object({
    availability_domain = number
    compartment_id      = string
    display_name        = string
    kms_key_id          = string
    size_in_gbs         = number
    freeform_tags       = map(string)
  })
}
