data "oci_core_fast_connect_provider_services" "fc_providers" {
  compartment_id = var.compartment_ids[var.fastconnect_params[keys(var.fastconnect_params)[0]].compartment_name]
}

resource "oci_core_virtual_circuit" "this" {
  for_each                  = var.fastconnect_params
  compartment_id            = var.compartment_ids[each.value.compartment_name]
  type                      = each.value.type
  bandwidth_shape_name      = each.value.bandwidth_shape_name
  bgp_admin_state           = each.value.bgp_admin_state
  customer_asn              = each.value.customer_asn
  display_name              = each.value.display_name
  ip_mtu                    = each.value.ip_mtu
  is_bfd_enabled            = each.value.is_bfd_enabled
  gateway_id                = each.value.type == "PRIVATE" ? var.drg_id[each.value.drg_name] : null
  provider_service_id       = var.fc_providers[each.value.provider_name]
  provider_service_key_name = each.value.provider_service_key_name
  region                    = var.region
  routing_policy            = each.value.routing_policy

  dynamic "cross_connect_mappings" {
    iterator = rr
    for_each = each.value.cross_connect_mappings
    content {
      bgp_md5auth_key                         = rr.value.bgp_md5auth_key
      cross_connect_or_cross_connect_group_id = rr.value.cross_connect_or_cross_connect_group_id
      customer_bgp_peering_ip                 = rr.value.customer_bgp_peering_ip
      customer_bgp_peering_ipv6               = rr.value.customer_bgp_peering_ipv6
      oracle_bgp_peering_ip                   = rr.value.oracle_bgp_peering_ip
      oracle_bgp_peering_ipv6                 = rr.value.oracle_bgp_peering_ipv6
      vlan                                    = rr.value.vlan
    }
  }

  dynamic "public_prefixes" {
    iterator = rr
    for_each = each.value.public_prefixes
    content {
      cidr_block = rr.value.cidr_block
    }
  }
}
