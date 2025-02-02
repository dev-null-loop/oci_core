variable "network_security_group_id" {
  description = "(Required) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the network security group."
  type        = string
}

variable "network_security_group_ids" {
  type = map(string)
}

variable "rules" {
  description = "(Optional) An array of security rules to add to the NSG. You can add up to 25 rules in a single `AddNetworkSecurityGroupSecurityRules` operation. Adding more than 25 rules requires multiple operations. "
  type = object({
    direction        = string
    protocol         = string
    description      = optional(string)
    destination      = optional(string)
    destination_type = optional(string)
    icmp_options = optional(object({
      type = optional(string)
      code = optional(number)
    }))
    source      = string
    source_type = string
    stateless   = string
    tcp_options = optional(object({
      destination_port_range = optional(object({
	min = number
	max = number
      }))
      source_port_range = optional(object({
	min = number
	max = number
      }))
    }))
    udp_options = optional(object({
      destination_port_range = optional(object({
	min = number
	max = number
      }))
      source_port_range = optional(object({
	min = number
	max = number
      }))
    }))
  })
  default = null
}
