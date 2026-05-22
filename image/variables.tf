variable "compartment_id" {
  description = "(Required) (Updatable) The OCID of the compartment you want the image to be created in."
  type        = string
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm).  Example: `{\"Operations.CostCenter\": \"42\"}`"
  type        = map(string)
  default     = null
}

variable "display_name" {
  description = "(Optional) (Updatable) A user-friendly name for the image. It does not have to be unique, and it's changeable. Avoid entering confidential information."
  type        = string
  default     = null
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm).  Example: `{\"Department\": \"Finance\"}`"
  type        = map(string)
  default     = {}
}

variable "image_source_details" {
  description = "(Optional)"
  type = object({
    bucket_name              = optional(string)
    namespace_name           = optional(string)
    object_name              = optional(string)
    operating_system         = optional(string)
    operating_system_version = optional(string)
    source_image_type        = optional(string)
    source_type              = string
    source_uri               = optional(string)
  })
  default = null
}

variable "instance_id" {
  description = "(Optional) The OCID of the instance you want to use as the basis for the image."
  type        = string
  default     = null
}

variable "launch_mode" {
  description = "(Optional) Specifies the configuration mode for launching virtual machine (VM) instances."
  type        = string
  default     = null
}
