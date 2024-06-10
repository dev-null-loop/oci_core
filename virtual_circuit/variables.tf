variable "compartment_id" {
  description = "(Required) (Updatable) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the compartment to contain the virtual circuit."
  type        = string
}

variable "bandwidth_shape_name" {
  description = "(Optional) (Updatable) The provisioned data rate of the connection. To get a list of the available bandwidth levels (that is, shapes), see [ListFastConnectProviderServiceVirtualCircuitBandwidthShapes](https://docs.cloud.oracle.com/iaas/api/#/en/iaas/latest/FastConnectProviderService/ListFastConnectProviderVirtualCircuitBandwidthShapes).  Example: `10 Gbps`"
  type        = string
  default     = "1 Gbps"
}

variable "bgp_admin_state" {
  description = "(Optional) (Updatable) Set to `ENABLED` (the default) to activate the BGP session of the virtual circuit, set to `DISABLED` to deactivate the virtual circuit."
  type        = string
  default     = "ENABLED"
}


variable "customer_asn" {
  description = "(Optional) (Updatable) Your BGP ASN (either public or private). Provide this value only if there's a BGP session that goes from your edge router to Oracle. Otherwise, leave this empty or null. Can be a 2-byte or 4-byte ASN. Uses \"asplain\" format.  Example: `12345` (2-byte) or `1587232876` (4-byte)"
  type        = number
  default     = 65432
}

variable "customer_bgp_asn" {
  description = "(Optional) (Updatable) Deprecated. Instead use `customerAsn`. If you specify values for both, the request will be rejected."
  type        = number
  default     = 65432
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm)."
  type        = map(string)
  default     = null
}

variable "display_name" {
  description = "(Optional) (Updatable) A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  type        = string
  default     = "virtual_circuit"
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm)."
  type        = map(string)
  default     = {}
}

variable "gateway_id" {
  description = "(Optional) (Updatable) For private virtual circuits only. The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the [dynamic routing gateway (DRG)](https://docs.cloud.oracle.com/iaas/api/#/en/iaas/latest/Drg) that this virtual circuit uses."
  type        = string
  default     = "ocid1.drg.oc1.eu-frankfurt-1.aaaaaaaacz66mcjococj36aumsynzlwqxegqcykzn32ki67rv2ijh6kmtf6a"
}

variable "ip_mtu" {
  description = "(Optional) (Updatable) The layer 3 IP MTU to use with this virtual circuit."
  type        = string
  default     = "MTU_1500"
}

variable "is_bfd_enabled" {
  description = "(Optional) (Updatable) Set to `true` to enable BFD for IPv4 BGP peering, or set to `false` to disable BFD. If this is not set, the default is `false`."
  type        = bool
  default     = false
}

variable "is_transport_mode" {
  description = "(Optional) (Updatable) Set to `true` for the virtual circuit to carry only encrypted traffic, or set to `false` for the virtual circuit to carry unencrypted traffic. If this is not set, the default is `false`."
  type        = bool
  default     = false
}

variable "provider_service_id" {
  description = "(Optional) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the service offered by the provider (if you're connecting via a provider). To get a list of the available service offerings, see [ListFastConnectProviderServices](https://docs.cloud.oracle.com/iaas/api/#/en/iaas/latest/FastConnectProviderService/ListFastConnectProviderServices). "
  type        = string
  default     = "ocid1.providerservice.oc1.eu-frankfurt-1.aaaaaaaa5baql7rbxno6f7mb3pqhtihfzl6impvhi6ynacds3uvsaz5unhca"
}

variable "provider_service_key_name" {
  description = "(Optional) (Updatable) The service key name offered by the provider (if the customer is connecting via a provider)."
  type        = string
  default     = null
}

variable "region" {
  description = "(Optional) The Oracle Cloud Infrastructure region where this virtual circuit is located. Example: `phx`"
  type        = string
  default     = null
}

variable "routing_policy" {
  description = "(Optional) (Updatable) The routing policy sets how routing information about the Oracle cloud is shared over a public virtual circuit. Policies available are: `ORACLE_SERVICE_NETWORK`, `REGIONAL`, `MARKET_LEVEL`, and `GLOBAL`. See [Route Filtering](https://docs.cloud.oracle.com/iaas/Content/Network/Concepts/routingonprem.htm#route_filtering) for details. By default, routing information is shared for all routes in the same market."
  type        = list(string)
  default = [
    "MARKET_LEVEL"
  ]
}

variable "type" {
  description = "(Required) The type of IP addresses used in this virtual circuit. PRIVATE means [RFC 1918](https://tools.ietf.org/html/rfc1918) addresses (10.0.0.0/8, 172.16/12, and 192.168/16). "
  type        = string
}

variable "cross_connect_mappings" {
  description = "(Optional) (Updatable) Create a `CrossConnectMapping` for each cross-connect or cross-connect group this virtual circuit will run on."
  type = list(object({
    bgp_md5auth_key                         = optional(string)
    cross_connect_or_cross_connect_group_id = optional(string)
    customer_bgp_peering_ip                 = optional(string)
    customer_bgp_peering_ipv6               = optional(string)
    oracle_bgp_peering_ip                   = optional(string)
    oracle_bgp_peering_ipv6                 = optional(string)
    vlan                                    = optional(string)
  }))
  default = []
}

variable "public_prefixes" {
  description = "(Optional) (Updatable) For a public virtual circuit. The public IP prefixes (CIDRs) the customer wants to advertise across the connection."
  type = object({
    cidr_block = string
  })
  default = null
}
