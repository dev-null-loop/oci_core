variable "compartment_id" {
  description = "(Required) (Updatable) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the compartment containing the instance pool."
  type        = string
}

variable "instance_configuration_id" {
  description = "(Required) (Updatable) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the instance configuration associated with the instance pool."
  type        = string
}

variable "placement_configurations" {
  description = "(Required) (Updatable) The placement configurations for the instance pool."
  type = list(object({
    availability_domain = string
    compute_cluster_id  = optional(string)
    fault_domains       = optional(list(string), [])
    primary_vnic_subnets = optional(object({
      subnet_id = string
      ipv6address_ipv6subnet_cidr_pair_details = optional(list(object({
        ipv6subnet_cidr = optional(string)
      })), [])
      is_assign_ipv6ip = optional(bool)
    }))
    secondary_vnic_subnets = optional(list(object({
      subnet_id    = string
      display_name = optional(string)
      ipv6address_ipv6subnet_cidr_pair_details = optional(list(object({
        ipv6subnet_cidr = optional(string)
      })), [])
      is_assign_ipv6ip = optional(bool)
    })), [])
  }))
}

variable "size" {
  description = "(Required) (Updatable) The number of instances that should be in the instance pool. Modifying this value will override the size of the instance pool. If the instance pool is linked with autoscaling configuration, autoscaling configuration could resize the instance pool at a later point. The instance pool's actual size may differ from the configured size if it is associated with an autoscaling configuration, instance pool's actual size will be reflected in this size attribute."
  type        = number
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

variable "instance_display_name_formatter" {
  description = "(Optional) (Updatable) A user-friendly formatter for the instance pool's instances. Instance displaynames follow the format. The formatter does not retroactively change instance's displaynames, only instance displaynames in the future follow the format."
  type        = string
  default     = null
}

variable "instance_hostname_formatter" {
  description = "(Optional) (Updatable) A user-friendly formatter for the instance pool's instances. Instance hostnames follow the format. The formatter does not retroactively change instance's hostnames, only instance hostnames in the future follow the format."
  type        = string
  default     = null
}

variable "lifecycle_management" {
  description = "(Optional) (Updatable) The lifecycle management options for the instance pool."
  type = object({
    lifecycle_actions = object({
      pre_termination = optional(object({
        is_enabled = bool
        on_timeout = object({
          preserve_block_volume_mode = string
          preserve_boot_volume_mode  = string
        })
        timeout = number
      }))
    })
  })
  default = null
}

variable "load_balancers" {
  description = "(Optional) The load balancers attached to the instance pool."
  type = list(object({
    backend_set_name = string
    load_balancer_id = string
    port             = number
    vnic_selection   = string
  }))
  default = []
}

variable "state" {
  description = "(Optional) (Updatable) The target state for the instance pool update operation (ignored at create time and should not be set). Could be set to RUNNING or STOPPED."
  type        = string
  default     = null
}
