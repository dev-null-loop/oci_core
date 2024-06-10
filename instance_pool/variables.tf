variable "compartment_id" {
  description = "(Required) (Updatable) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the compartment containing the instance pool."
  type        = string
  validation {
    condition     = length(var.compartment_id) > 18 && substr(var.compartment_id, 0, 18) == "ocid1.compartment."
    error_message = "The compartment ID must be a valid OCID, starting with \"ocid1.compartment.\"."
  }
}

variable "instance_configuration_id" {
  description = "(Required) (Updatable) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the instance configuration associated with the instance pool."
  type        = string
}

variable "size" {
  description = "(Required) (Updatable) The number of instances that should be in the instance pool. Modifying this value will override the size of the instance pool. If the instance pool is linked with autoscaling configuration, autoscaling configuration could resize the instance pool at a later point. The instance pool's actual size may differ from the configured size if it is associated with an autoscaling configuration, instance pool's actual size will be reflected in this size attribute."
  type        = number
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm)."
  type        = map(string)
  default     = null
}

variable "display_name" {
  description = "(Optional) (Updatable) A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  type        = string
  default     = "instance_pool"
}

variable "freeform_tags" {
  description = "Placeholder for the free form tags applied to the resources"
  type        = map(string)
  default     = {}
}

variable "instance_display_name_formatter" {
  description = "(Optional) (Updatable) A user-friendly formatter for the instance pool's instances. Instance displaynames follow the format. The formatter does not retroactively change instance's displaynames, only instance displaynames in the future follow the format"
  type        = string
  default     = null
}

variable "instance_hostname_formatter" {
  description = "(Optional) (Updatable) A user-friendly formatter for the instance pool's instances. Instance hostnames follow the format. The formatter does not retroactively change instance's hostnames, only instance hostnames in the future follow the format"
  type        = string
  default     = null
}

variable "availability_domain" {
  description = "(Required) (Updatable) The availability domain to place instances."
  type        = number
}

variable "fault_domains" {
  description = "(Optional) (Updatable) The fault domains to place instances."
  type        = list(string)
  default     = []
}

variable "load_balancers" {
  description = "(Optional) The load balancers to attach to the instance pool."
  type = object({
    backend_set_name = string
    load_balancer_id = string
    port             = number
    vnic_selection   = string
  })
  default = null
}
