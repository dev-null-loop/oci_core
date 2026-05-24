resource "oci_core_ipsec_connection_tunnel_management" "this" {
  ipsec_id  = var.ipsec_id
  tunnel_id = var.tunnel_id
  routing   = var.routing
  dynamic "bgp_session_info" {
    for_each = var.bgp_session_info[*]
    iterator = bsi
    content {
      customer_bgp_asn        = bsi.value.customer_bgp_asn
      customer_interface_ip   = bsi.value.customer_interface_ip
      oracle_interface_ip     = bsi.value.oracle_interface_ip
      customer_interface_ipv6 = bsi.value.customer_interface_ipv6
      oracle_interface_ipv6   = bsi.value.oracle_interface_ipv6
    }
  }
  display_name = var.display_name
  dynamic "dpd_config" {
    for_each = var.dpd_config[*]
    iterator = dc
    content {
      dpd_mode           = dc.value.dpd_mode
      dpd_timeout_in_sec = dc.value.dpd_timeout_in_sec
    }
  }
  dynamic "encryption_domain_config" {
    for_each = var.encryption_domain_config[*]
    iterator = edc
    content {
      cpe_traffic_selector    = edc.value.cpe_traffic_selector
      oracle_traffic_selector = edc.value.oracle_traffic_selector
    }
  }
  shared_secret           = var.shared_secret
  ike_version             = var.ike_version
  nat_translation_enabled = var.nat_translation_enabled
  oracle_can_initiate     = var.oracle_can_initiate
  dynamic "phase_one_details" {
    for_each = var.phase_one_details[*]
    iterator = pod
    content {
      custom_authentication_algorithm = pod.value.custom_authentication_algorithm
      custom_dh_group                 = pod.value.custom_dh_group
      custom_encryption_algorithm     = pod.value.custom_encryption_algorithm
      is_custom_phase_one_config      = pod.value.is_custom_phase_one_config
      lifetime                        = pod.value.lifetime
    }
  }
  dynamic "phase_two_details" {
    for_each = var.phase_two_details[*]
    iterator = ptd
    content {
      custom_authentication_algorithm = ptd.value.custom_authentication_algorithm
      custom_encryption_algorithm     = ptd.value.custom_encryption_algorithm
      dh_group                        = ptd.value.dh_group
      is_custom_phase_two_config      = ptd.value.is_custom_phase_two_config
      is_pfs_enabled                  = ptd.value.is_pfs_enabled
      lifetime                        = ptd.value.lifetime
    }
  }
}
