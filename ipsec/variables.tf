variable "compartment_id" {
  description = "(Required) (Updatable) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the compartment to contain the IPSec connection."
  type        = string
}

variable "cpe_id" {
  description = "(Required) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the [Cpe](https://docs.cloud.oracle.com/iaas/api/#/en/iaas/latest/Cpe/) object."
  type        = string
}

variable "drg_id" {
  description = "(Required) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the DRG."
  type        = string
}

variable "static_routes" {
  description = "(Required) (Updatable) Static routes to the CPE. A static route's CIDR must not be a multicast address or class E address."
  type        = list(string)
}

variable "cpe_local_identifier" {
  description = "(Optional) (Updatable) Your identifier for your CPE device. Can be either an IP address or a hostname (specifically, the fully qualified domain name (FQDN)). The type of identifier you provide here must correspond to the value for `cpeLocalIdentifierType`."
  type        = string
  default     = null
}

variable "cpe_local_identifier_type" {
  description = "(Optional) (Updatable) The type of identifier for your CPE device. The value you provide here must correspond to the value for `cpeLocalIdentifier`."
  type        = string
  default     = null
  validation {
    condition     = var.cpe_local_identifier_type == null || contains(["HOSTNAME", "IP_ADDRESS"], var.cpe_local_identifier_type)
    error_message = "Supported values are: IP_ADDRESS, HOSTNAME"
  }
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

variable "tunnel_configuration" {
  description = "(Optional) (Non-updatable) Tunnel configuration for private ipsec connection over fastconnect."
  type = list(object({
    oracle_tunnel_ip            = optional(string)
    associated_virtual_circuits = optional(list(string), [])
    drg_route_table_id          = optional(string)
  }))
  default = []
  validation {
    condition     = length(var.tunnel_configuration) <= 2
    error_message = "tunnel_configuration can contain at most 2 entries."
  }
}
