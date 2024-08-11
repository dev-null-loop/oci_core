variable "compartment_id" {
  description = "The OCID of the compartment to contain the route tables."
  type        = string
}

variable "vcn_id" {
  description = "The OCID of the VCN the route tables are attached to."
  type        = string
}

variable "display_name" {
  description = "Name of the route tables."
  type        = string
}

variable "route_rules" {
  description = "(Optional) (Updatable) The collection of rules used for routing destination IPs to network devices."
  type = list(object({
    network_entity_name = string
    cidr_block          = optional(string)
    description         = optional(string)
    destination         = string
    destination_type    = string
  }))

  validation {
    condition     = alltrue([for i in var.route_rules : can(regex("^(ig|sg|lpg|drg|ng|pip)_", i.network_entity_name))])
    error_message = "Error: A network_entity_name is prefixed with (ig|sg|lpg|drg|ng|pip)_(.*), where (.*) is the name of the object representing the network entity"
  }

  validation {
    condition = alltrue([for i in var.route_rules :
    can(regex("^(lpg_.*_(requestor|acceptor))$", i.network_entity_name)) if can(regex("^lpg_", i.network_entity_name))])
    error_message = "valid network_entity_names for local peering gateways are lpg_(.*)_(requestor|acceptor), where (.*) is the name of the object representing the lpg"
  }
}

variable "network_entity_ids" {
  description = "(Required) (Updatable) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) for the route rule's target. For information about the type of targets you can specify, see [Route Tables](https://docs.cloud.oracle.com/iaas/Content/Network/Tasks/managingroutetables.htm)."
  type        = map(string)
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm)."
  type        = map(string)
  default     = null
}

variable "freeform_tags" {
  description = "Free form tags applied to organize and list multiple route tables."
  type        = map(string)
  default     = {}
}
