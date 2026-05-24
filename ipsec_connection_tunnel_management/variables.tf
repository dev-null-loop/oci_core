variable "ipsec_id" {
  description = "(Required) The OCID of the IPSec connection."
  type        = string
}

variable "tunnel_id" {
  description = "(Required) The OCID of the IPSec connection's tunnel."
  type        = string
}

variable "routing" {
  description = "(Optional) The type of routing to use for this tunnel (either BGP dynamic routing, STATIC routing or POLICY routing)."
  type        = string
  default     = null
}

variable "bgp_session_info" {
  description = "(Optional) Information for establishing a BGP session for the IPSec tunnel. Required if the tunnel uses BGP dynamic routing."
  type = object({
    customer_bgp_asn        = optional(string)
    customer_interface_ip   = optional(string)
    oracle_interface_ip     = optional(string)
    customer_interface_ipv6 = optional(string)
    oracle_interface_ipv6   = optional(string)
  })
  default = null
}

variable "display_name" {
  description = "(Optional) A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  type        = string
  default     = null
}

variable "dpd_config" {
  description = "(Optional)"
  type = object({
    dpd_mode           = optional(string)
    dpd_timeout_in_sec = optional(number)
  })
  default = null
}

variable "encryption_domain_config" {
  description = "(Optional) Configuration information used by the encryption domain policy. Required if the tunnel uses POLICY routing."
  type = object({
    cpe_traffic_selector    = optional(list(string), [])
    oracle_traffic_selector = optional(list(string), [])
  })
  default = null
}

variable "shared_secret" {
  description = "(Optional) The shared secret (pre-shared key) to use for the IPSec tunnel. If you don't provide a value, Oracle generates a value for you. You can specify your own shared secret later if you like with [UpdateIPSecConnectionTunnelSharedSecret](https://docs.cloud.oracle.com/iaas/api/#/en/iaas/20160918/IPSecConnectionTunnelSharedSecret/UpdateIPSecConnectionTunnelSharedSecret).  Example: `EXAMPLEToUis6j1c.p8G.dVQxcmdfMO0yXMLi.lZTbYCMDGu4V8o`"
  type        = string
  default     = null
}

variable "ike_version" {
  description = "(Optional) Internet Key Exchange protocol version."
  type        = string
  default     = null
}

variable "nat_translation_enabled" {
  description = "(Optional) By default (the `AUTO` setting), IKE sends packets with a source and destination port set to 500, and when it detects that the port used to forward packets has changed (most likely because a NAT device is between the CPE device and the Oracle VPN headend) it will try to negotiate the use of NAT-T."
  type        = string
  default     = null
}

variable "oracle_can_initiate" {
  description = "(Optional) Indicates whether Oracle can only respond to a request to start an IPSec tunnel from the CPE device (`RESPONDER_ONLY`), or both respond to and initiate requests (`INITIATOR_OR_RESPONDER`)."
  type        = string
  default     = null
}

variable "phase_one_details" {
  description = "(Optional) Configuration details for IKE phase one (ISAKMP) configuration parameters."
  type = object({
    custom_authentication_algorithm = optional(string)
    custom_dh_group                 = optional(string)
    custom_encryption_algorithm     = optional(string)
    is_custom_phase_one_config      = optional(bool)
    lifetime                        = optional(number)
  })
  default = null
}

variable "phase_two_details" {
  description = "(Optional) Configuration details for IPSec phase two configuration parameters."
  type = object({
    custom_authentication_algorithm = optional(string)
    custom_encryption_algorithm     = optional(string)
    dh_group                        = optional(string)
    is_custom_phase_two_config      = optional(bool)
    is_pfs_enabled                  = optional(bool)
    lifetime                        = optional(number)
  })
  default = null
}
