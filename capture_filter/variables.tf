variable "compartment_id" {
  description = "(Required) (Updatable) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the compartment containing the capture filter."
  type        = string
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm)."
  type        = map(string)
  default     = null
}

variable "display_name" {
  description = "(Optional) (Updatable) A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  type        = string
  default     = null
}

variable "filter_type" {
  description = "(Required) Indicates which service will use this capture filter"
  type        = string
}

variable "flow_log_capture_filter_rules" {
  description = "(Optional) (Updatable) The set of rules governing what traffic the Flow Log collects when creating a flow log capture filter."
  type = list(object({
    destination_cidr = optional(string)
    flow_log_type    = optional(string)
    icmp_options = optional(object({
      code = optional(string)
      type = number
    }))
    is_enabled    = optional(bool)
    priority      = optional(number)
    protocol      = optional(number)
    rule_action   = optional(string)
    sampling_rate = optional(number)
    source_cidr   = optional(string)
    tcp_options = optional(object({
      destination_port_range = optional(object({
	max = number
	min = number
      }))
      source_port_range = optional(object({
	max = number
	min = number
      }))
    }))
    udp_options = optional(object({
      destination_port_range = optional(object({
	max = number
	min = number
      }))
      source_port_range = optional(object({
	max = number
	min = number
      }))
    }))
  }))
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm)."
  type        = map(string)
  default     = {}
}

variable "vtap_capture_filter_rules" {
  description = "(Optional) (Updatable) The set of rules governing what traffic a VTAP mirrors."
  type = list(object({
    traffic_direction = string
    destination_cidr  = optional(string)
    icmp_options = optional(object({
      code = optional(string)
      type = number
    }))
    protocol    = optional(number)
    rule_action = optional(string)
    source_cidr = optional(string)
    tcp_options = optional(object({
      destination_port_range = optional(object({
	max = number
	min = number
      }))
      source_port_range = optional(object({
	max = number
	min = number
      }))
    }))
    udp_options = optional(object({
      destination_port_range = optional(object({
	max = number
	min = number
      }))
      source_port_range = optional(object({
	max = number
	min = number
      }))
    }))
  }))
}
