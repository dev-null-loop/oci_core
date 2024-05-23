variable "compartment_ids" {
  type = map(string)
}

variable "region" {
  type = string
}

variable "drg_id" {
  type = string
}

variable "fastconnect_params" {
  description = "Parameters for the FastConnect"
  type = map(object({
    display_name              = string
    compartment_name          = string
    drg_name                  = string
    type                      = string
    bandwidth_shape_name      = string
    bgp_admin_state           = string
    customer_asn              = string
    ip_mtu                    = string
    is_bfd_enabled            = bool
    provider_name             = string
    provider_service_key_name = string
    routing_policy            = list(string)
    cross_connect_mappings = list(object({
      bgp_md5auth_key                         = string
      cross_connect_or_cross_connect_group_id = string
      customer_bgp_peering_ip                 = string
      customer_bgp_peering_ipv6               = string
      oracle_bgp_peering_ip                   = string
      oracle_bgp_peering_ipv6                 = string
      vlan                                    = string
    }))
    public_prefixes = list(object({
      cidr_block = string
    }))

  }))
}

variable "fc_providers" {
  description = "List of OCID for the FastConnect"
  type        = map(string)
}
