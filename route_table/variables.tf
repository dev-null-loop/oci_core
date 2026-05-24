variable "compartment_id" {
  description = "(Required) (Updatable) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the compartment to contain the route table."
  type        = string
}

variable "vcn_id" {
  description = "(Required) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the VCN the route table belongs to."
  type        = string
}

variable "display_name" {
  description = "(Optional) (Updatable) A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  type        = string
  default     = null
}

variable "route_rules" {
  description = "(Optional) (Updatable) The collection of rules used for routing destination IPs to network devices."
  type = list(object({
    description       = optional(string)
    destination       = optional(string)
    destination_type  = optional(string)
    network_entity_id = string
  }))
  default = []

  validation {
    condition = alltrue([
      for rule in var.route_rules :
      rule.destination_type == null || contains(["CIDR_BLOCK", "SERVICE_CIDR_BLOCK"], rule.destination_type)
    ])
    error_message = "Each route rule destination_type must be CIDR_BLOCK or SERVICE_CIDR_BLOCK."
  }

  validation {
    condition = alltrue([
      for rule in var.route_rules :
      rule.destination != null && length(trimspace(rule.destination)) > 0
    ])
    error_message = "Each route rule must include a non-empty destination."
  }

  validation {
    condition = alltrue([
      for rule in var.route_rules :
      length(trimspace(rule.network_entity_id)) > 0
    ])
    error_message = "Each route rule must include a non-empty network_entity_id."
  }

  validation {
    condition = alltrue([
      for rule in var.route_rules :
      rule.destination_type == null || rule.destination != null
    ])
    error_message = "Each route rule that sets destination_type must also set destination."
  }
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm).  Example: `{\"Operations.CostCenter\": \"42\"}`"
  type        = map(string)
  default     = null
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm).  Example: `{\"Department\": \"Finance\"}`"
  type        = map(string)
  default     = {}
}
