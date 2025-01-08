resource "oci_core_virtual_circuit" "this" {
  compartment_id       = var.compartment_id
  type                 = var.type
  bandwidth_shape_name = var.bandwidth_shape_name
  bgp_admin_state      = var.bgp_admin_state
  dynamic "cross_connect_mappings" {
    for_each = var.cross_connect_mappings != [] ? var.cross_connect_mappings : []
    iterator = ccm
    content {
      bgp_md5auth_key                         = ccm.value.bgp_md5auth_key
      cross_connect_or_cross_connect_group_id = ccm.value.cross_connect_or_cross_connect_group_id
      customer_bgp_peering_ip                 = ccm.value.customer_bgp_peering_ip
      customer_bgp_peering_ipv6               = ccm.value.customer_bgp_peering_ipv6
      oracle_bgp_peering_ip                   = ccm.value.oracle_bgp_peering_ip
      oracle_bgp_peering_ipv6                 = ccm.value.oracle_bgp_peering_ipv6
      vlan                                    = ccm.value.vlan
    }
  }
  customer_asn              = var.customer_asn
  defined_tags              = var.defined_tags
  display_name              = var.display_name
  freeform_tags             = var.freeform_tags
  ip_mtu                    = var.ip_mtu
  is_bfd_enabled            = var.is_bfd_enabled
  is_transport_mode         = var.is_transport_mode
  gateway_id                = var.gateway_id
  provider_service_id       = var.provider_service_id
  provider_service_key_name = var.provider_service_key_name
  dynamic "public_prefixes" {
    for_each = var.public_prefixes[*]
    content {
      cidr_block = public_prefixes.value.cidr_block
    }
  }
  region         = var.region
  routing_policy = var.routing_policy
}
