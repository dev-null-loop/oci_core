variable "cluster_configuration" {
  description = "(Optional) The HPC cluster configuration requested when launching instances of a cluster network."
  type = object({
    hpc_island_id     = string
    network_block_ids = optional(list(string), [])
  })
  default = null
}

variable "compartment_id" {
  description = "(Required) (Updatable) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the compartment containing the cluster network."
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

variable "instance_pools" {
  description = "(Required) (Updatable) The data to create the instance pools in the cluster network."
  type = list(object({
    defined_tags              = optional(map(string))
    display_name              = optional(string)
    freeform_tags             = optional(map(string), {})
    instance_configuration_id = string
    size                      = number
  }))
}

variable "placement_configuration" {
  description = "(Required) The location for where the instance pools in a cluster network will place instances."
  type = object({
    availability_domain  = string
    placement_constraint = optional(string)
    primary_subnet_id    = optional(string)
    primary_vnic_subnets = optional(object({
      ipv6address_ipv6subnet_cidr_pair_details = optional(list(object({
        ipv6subnet_cidr = optional(string)
      })), [])
      is_assign_ipv6ip = optional(bool)
      subnet_id        = string
    }))
    secondary_vnic_subnets = optional(list(object({
      display_name = optional(string)
      ipv6address_ipv6subnet_cidr_pair_details = optional(list(object({
        ipv6subnet_cidr = optional(string)
      })), [])
      is_assign_ipv6ip = optional(bool)
      subnet_id        = string
    })), [])
  })
}
