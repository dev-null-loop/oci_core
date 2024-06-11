resource "oci_core_drg_attachment" "this" {
  drg_id             = var.drg_id
  defined_tags       = var.defined_tags
  display_name       = var.display_name
  drg_route_table_id = var.drg_route_table_id
  freeform_tags      = var.freeform_tags

  network_details {
    id             = var.network_details.id
    type           = var.network_details.type
    route_table_id = var.network_details.route_table_id
    vcn_route_type = var.network_details.vcn_route_type
  }
}
