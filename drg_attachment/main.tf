resource "oci_core_drg_attachment" "this" {
  drg_id                                       = var.drg_id
  defined_tags                                 = var.defined_tags
  display_name                                 = var.display_name
  drg_route_table_id                           = var.drg_route_table_id
  export_drg_route_distribution_id             = var.export_drg_route_distribution_id
  freeform_tags                                = var.freeform_tags
  remove_export_drg_route_distribution_trigger = var.remove_export_drg_route_distribution_trigger
  route_table_id                               = var.route_table_id
  vcn_id                                       = var.vcn_id

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
