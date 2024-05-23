data "oci_core_ipsec_connection_tunnels" "this" {
  ipsec_id = oci_core_ipsec.this.id
}

locals {
  tunnels = data.oci_core_ipsec_connection_tunnels.this.ip_sec_connection_tunnels[*].id
}

resource "oci_core_ipsec" "this" {
  compartment_id            = var.compartment_id
  cpe_id                    = var.cpe_id
  drg_id                    = var.drg_id
  static_routes             = var.static_routes
  cpe_local_identifier      = var.cpe_local_identifier
  cpe_local_identifier_type = var.cpe_local_identifier_type
  display_name              = var.display_name
  defined_tags              = var.defined_tags
  freeform_tags             = var.freeform_tags
}

resource "oci_core_ipsec_connection_tunnel_management" "this" {
  ipsec_id                = oci_core_ipsec.this.id
  tunnel_id               = local.tunnels[0]
  routing                 = var.tunnel_this_routing
  display_name            = "one"
  shared_secret           = var.shared_secret
  ike_version             = var.ike_version
  oracle_can_initiate     = var.oracle_can_initiate
  nat_translation_enabled = var.nat_translation_enabled
  # dpd_mode                = var.dpd_mode
  # dpd_timeout_in_sec      = var.dpd_timeout_in_sec


  dynamic "bgp_session_info" {
    for_each = var.tunnel_this_routing == "BGP" ? [1] : []
    content {
      customer_bgp_asn      = var.customer_bgp_asn
      customer_interface_ip = var.customer_interface_ip
      oracle_interface_ip   = var.oracle_interface_ip
    }
  }

  dynamic "encryption_domain_config" {
    for_each = var.tunnel_this_routing == "POLICY" ? [1] : []
    content {
      cpe_traffic_selector    = var.cpe_traffic_selector
      oracle_traffic_selector = var.oracle_traffic_selector
    }
  }

  dynamic "phase_one_details" {
    for_each = var.tunnel_this_phase_one_details[*]
    content {
      custom_authentication_algorithm = var.tunnel_this_phase_one_details.custom_authentication_algorithm
      custom_encryption_algorithm     = var.tunnel_this_phase_one_details.custom_encryption_algorithm
      custom_dh_group                 = var.tunnel_this_phase_one_details.custom_dh_group
      is_custom_phase_one_config      = var.tunnel_this_phase_one_details.is_custom_phase_one_config
      lifetime                        = var.tunnel_this_phase_one_details.lifetime
    }
  }

  dynamic "phase_two_details" {
    for_each = var.tunnel_this_phase_two_details[*]
    content {
      custom_authentication_algorithm = var.tunnel_this_phase_two_details.custom_authentication_algorithm
      custom_encryption_algorithm     = var.tunnel_this_phase_two_details.custom_encryption_algorithm
      dh_group                        = var.tunnel_this_phase_two_details.dh_group
      is_custom_phase_two_config      = var.tunnel_this_phase_two_details.is_custom_phase_two_config
      lifetime                        = var.tunnel_this_phase_two_details.lifetime
    }
  }

  timeouts {
    create = "5m"
    delete = "5m"
  }
}

resource "oci_core_ipsec_connection_tunnel_management" "that" {
  ipsec_id      = oci_core_ipsec.this.id
  tunnel_id     = local.tunnels[1]
  display_name  = "two:not_used"
  shared_secret = var.shared_secret
  ike_version   = var.ike_version

  timeouts {
    create = "5m"
    delete = "5m"
  }
}
