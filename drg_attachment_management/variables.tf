variable "attachment_type" {
  description = "(Required) The type for the network resource attached to the DRG."
  type        = string
}

variable "compartment_id" {
  description = "(Required) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the compartment."
  type        = string
}

variable "network_id" {
  description = "(Optional) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the resource (virtual circuit, VCN, IPSec tunnel, or remote peering connection) attached to the DRG."
  type        = string
  default     = null
}

variable "drg_id" {
  description = "(Required) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the DRG."
  type        = string
}

variable "display_name" {
  description = "(Optional)(Updatable) A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  type        = string
  default     = null
}

variable "drg_route_table_id" {
  description = "(Optional)(Updatable) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the DRG route table assigned to the DRG attachment."
  type        = string
  default     = null
}

# variable "defined_tags" {
#   description = "(Optional)(Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm)."
#   type        = map(string)
#   default     = null
# }

# variable "freeform_tags" {
#   description = "(Optional)(Updatable) Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm)."
#   type        = map(string)
#   default     = {}
# }

variable "network_details" {
  description = "(Optional) (Updatable)"
  type = object({
    id                  = optional(string)
    ipsec_connection_id = optional(string)
    route_table_id      = optional(string)
    type                = optional(string)
  })
  default = null
}
