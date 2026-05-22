variable "availability_domain" {
  description = "(Required) The availability domain for the capacity report.  Example: `Uocm:PHX-AD-1`"
  type        = string
}

variable "compartment_id" {
  description = "(Required) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) for the compartment. This should always be the root compartment."
  type        = string
}

variable "shape_availabilities" {
  description = "(Required) Information about the shapes in the capacity report."
  type = list(object({
    fault_domain   = optional(string)
    instance_shape = string
    instance_shape_config = optional(object({
      baseline_ocpu_utilization = optional(string)
      memory_in_gbs             = optional(number)
      nvmes                     = optional(number)
      ocpus                     = optional(number)
    }))
  }))
}
