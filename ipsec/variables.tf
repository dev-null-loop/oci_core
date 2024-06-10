variable "compartment_id" {
  description = "(Required) (Updatable) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the compartment to contain the IPSec connection."
  type        = string
}

variable "drg_id" {
  description = "(Required) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the DRG."
  type        = string
}

variable "cpe_id" {
  description = "(Required) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the CPE."
  type        = string
}

variable "static_routes" {
  description = "(Required) (Updatable) Static routes to the CPE. A static route's CIDR must not be a multicast address or class E address."
  type        = list(string)
}

variable "cpe_local_identifier_type" {
  description = "(Optional) (Updatable) The type of identifier for your CPE device. The value you provide here must correspond to the value for `cpeLocalIdentifier`."
  type        = string
  default     = null
  validation {
    condition     = contains(["IP_ADDRESS", "HOSTNAME"], var.cpe_local_identifier_type)
    error_message = "Supported values are: IP_ADDRESS, HOSTNAME"
  }
}

variable "cpe_local_identifier" {
  description = "(Optional) (Updatable) Your identifier for your CPE device. Can be either an IP address or a hostname (specifically, the fully qualified domain name (FQDN)). The type of identifier you provide here must correspond to the value for `cpeLocalIdentifierType`."
  type        = string
  default     = null
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm)."
  type        = map(string)
  default     = null
}

variable "display_name" {
  description = "(Optional) (Updatable) A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  type        = string
  default     = "ipsec"
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm)."
  type        = map(string)
  default     = {}
}

variable "tunnel_this_routing" {
  description = "(Optional) The type of routing to use for this tunnel (either BGP dynamic routing, STATIC routing or POLICY routing)."
  type        = string
  default     = "STATIC"
  validation {
    condition     = contains(["BGP", "STATIC", "POLICY"], var.tunnel_this_routing)
    error_message = "Error: The type of routing to use for this tunnel can be either BGP dynamic routing, STATIC routing or POLICY routing"
  }
}

variable "shared_secret" {
  description = "(Optional) The shared secret (pre-shared key) to use for the IPSec tunnel. If you don't provide a value, Oracle generates a value for you. You can specify your own shared secret later if you like with [UpdateIPSecConnectionTunnelSharedSecret](https://docs.cloud.oracle.com/iaas/api/#/en/iaas/20160918/IPSecConnectionTunnelSharedSecret/UpdateIPSecConnectionTunnelSharedSecret).  Example: `EXAMPLEToUis6j1c.p8G.dVQxcmdfMO0yXMLi.lZTbYCMDGu4V8o`"
  type        = string
  default     = null
}

variable "ike_version" {
  description = "(Optional) Internet Key Exchange protocol version."
  type        = string
  default     = "V2"
}

variable "customer_bgp_asn" {
  description = "(Optional) If the tunnel's `routing` attribute is set to `BGP` (see [IPSecConnectionTunnel](https://docs.cloud.oracle.com/iaas/api/#/en/iaas/20160918/IPSecConnectionTunnel/)), this ASN is required and used for the tunnel's BGP session. This is the ASN of the network on the CPE end of the BGP session. Can be a 2-byte or 4-byte ASN. Uses \"asplain\" format."
  type        = number
  default     = 12345
}

variable "customer_interface_ip" {
  description = "(Optional) The IP address for the CPE end of the inside tunnel interface."
  type        = string
  default     = "10.0.0.5/30"
}

variable "oracle_interface_ip" {
  description = "(Optional) The IP address for the Oracle end of the inside tunnel interface."
  type        = string
  default     = "10.0.0.4/31"
}


variable "cpe_traffic_selector" {
  description = "(Optional) Lists IPv4 or IPv6-enabled subnets in your on-premises network."
  type        = list(string)
  default     = []
}

variable "oracle_traffic_selector" {
  description = "(Optional) Lists IPv4 or IPv6-enabled subnets in your Oracle tenancy."
  type        = list(string)
  default     = []
}

variable "tunnel_this_phase_one_details" {
  description = "(Optional) Configuration details for IKE phase one (ISAKMP) configuration parameters."
  type = object({
    custom_encryption_algorithm     = optional(string)
    custom_authentication_algorithm = optional(string)
    custom_dh_group                 = optional(string)
    is_custom_phase_one_config      = optional(bool)
    lifetime                        = optional(number)
  })
  default = {}
}

variable "tunnel_this_phase_two_details" {
  description = "(Optional) Configuration details for IPSec phase two configuration parameters."
  type = object({
    custom_authentication_algorithm = optional(string)
    custom_encryption_algorithm     = optional(string)
    dh_group                        = optional(string)
    is_custom_phase_two_config      = optional(bool)
    is_pfs_enabled                  = optional(bool)
    lifetime                        = optional(number)
  })
  default = {}
}

variable "nat_translation_enabled" {
  description = "(Optional) By default (the `AUTO` setting), IKE sends packets with a source and destination port set to 500, and when it detects that the port used to forward packets has changed (most likely because a NAT device is between the CPE device and the Oracle VPN headend) it will try to negotiate the use of NAT-T."
  type        = string
  default     = "AUTO"
}

variable "oracle_can_initiate" {
  description = "(Optional) Indicates whether Oracle can only respond to a request to start an IPSec tunnel from the CPE device (`RESPONDER_ONLY`), or both respond to and initiate requests (`INITIATOR_OR_RESPONDER`)."
  type        = string
  default     = "INITIATOR_OR_RESPONDER"
}

# variable "dpd_mode" {
#   description = "(Optional) This option defines whether DPD can be initiated from the Oracle side of the connection. `INITIATE_AND_RESPOND` or `RESPOND_ONLY`"
#   type        = string
#   default     = "INITIATE_AND_RESPOND"
# }

# variable "dpd_timeout_in_sec" {
#   description = "(Optional) DPD timeout in seconds. This sets the longest interval between CPE device health messages before the IPSec connection indicates it has lost contact with the CPE. The default is 20 seconds."
#   type        = number
#   default     = 20
# }
