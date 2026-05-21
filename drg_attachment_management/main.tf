resource "oci_core_drg_attachment_management" "this" {
  attachment_type                              = var.attachment_type
  compartment_id                               = var.compartment_id
  network_id                                   = var.network_id
  drg_id                                       = var.drg_id
  display_name                                 = var.display_name
  drg_route_table_id                           = var.drg_route_table_id
  defined_tags                                 = var.defined_tags
  freeform_tags                                = var.freeform_tags
  export_drg_route_distribution_id             = var.export_drg_route_distribution_id
  remove_export_drg_route_distribution_trigger = var.remove_export_drg_route_distribution_trigger
  route_table_id                               = var.route_table_id
  vcn_id                                       = var.vcn_id
  dynamic "network_details" {
    for_each = var.network_details[*]
    iterator = nd
    content {
      id                  = nd.value.id
      ipsec_connection_id = nd.value.ipsec_connection_id
      route_table_id      = nd.value.route_table_id
      type                = nd.value.type
    }
  }
}
