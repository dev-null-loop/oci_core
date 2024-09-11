resource "oci_core_drg_attachment" "this" {
  drg_id             = var.drg_id
  defined_tags       = var.defined_tags
  display_name       = var.display_name
  drg_route_table_id = var.drg_route_table_id
  freeform_tags      = var.freeform_tags

  dynamic "network_details" {
    for_each = var.network_details[*]
    iterator = nd
    content {
      id             = nd.value.id
      type           = nd.value.type
      route_table_id = nd.value.route_table_id
      vcn_route_type = nd.value.vcn_route_type
    }
  }
}
