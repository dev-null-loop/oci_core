resource "oci_core_ipsec" "this" {
  compartment_id            = var.compartment_id
  cpe_id                    = var.cpe_id
  drg_id                    = var.drg_id
  static_routes             = var.static_routes
  cpe_local_identifier      = var.cpe_local_identifier
  cpe_local_identifier_type = var.cpe_local_identifier_type
  defined_tags              = var.defined_tags
  display_name              = var.display_name
  freeform_tags             = var.freeform_tags
  dynamic "tunnel_configuration" {
    for_each = var.tunnel_configuration
    iterator = tc
    content {
      oracle_tunnel_ip            = tc.value.oracle_tunnel_ip
      associated_virtual_circuits = tc.value.associated_virtual_circuits
      drg_route_table_id          = tc.value.drg_route_table_id
    }
  }
}
