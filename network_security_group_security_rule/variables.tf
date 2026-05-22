variable "network_security_group_id" {
  description = "(Required) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the network security group."
  type        = string
}

variable "description" {
  description = "(Optional) An optional description of your choice for the rule. Avoid entering confidential information."
  type        = string
  default     = null
}

variable "destination" {
  description = "(Optional) Conceptually, this is the range of IP addresses that a packet originating from the instance can go to."
  type        = string
  default     = null
}

variable "destination_type" {
  description = "(Optional) Type of destination for the rule. Required if `direction` = `EGRESS`."
  type        = string
  default     = null
}

variable "direction" {
  description = "(Required) Direction of the security rule. Set to `EGRESS` for rules to allow outbound IP packets, or `INGRESS` for rules to allow inbound IP packets."
  type        = string
}

variable "icmp_options" {
  description = "(Optional) Optional and valid only for ICMP and ICMPv6. Use to specify a particular ICMP type and code."
  type = object({
    code = optional(number)
    type = number
  })
  default = null
}

variable "protocol" {
  description = "(Required) The transport protocol. Specify either `all` or an IPv4 protocol number as defined in [Protocol Numbers](http://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml)."
  type        = string
}

variable "rule_source" {
  description = "(Optional) Conceptually, this is the range of IP addresses that a packet coming into the instance can come from."
  type        = string
  default     = null
}

variable "rule_source_type" {
  description = "(Optional) Type of source for the rule. Required if `direction` = `INGRESS`."
  type        = string
  default     = null
}

variable "stateless" {
  description = "(Optional) A stateless rule allows traffic in one direction."
  type        = bool
  default     = null
}

variable "tcp_options" {
  description = "(Optional) Optional and valid only for TCP. Use to specify particular destination ports for TCP rules."
  type = object({
    destination_port_range = optional(object({
      max = number
      min = number
    }))
    source_port_range = optional(object({
      max = number
      min = number
    }))
  })
  default = null
}

variable "udp_options" {
  description = "(Optional) Optional and valid only for UDP. Use to specify particular destination ports for UDP rules."
  type = object({
    destination_port_range = optional(object({
      max = number
      min = number
    }))
    source_port_range = optional(object({
      max = number
      min = number
    }))
  })
  default = null
}
