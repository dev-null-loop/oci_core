resource "oci_core_drg_attachment_management" "this" {
  attachment_type    = var.attachment_type
  compartment_id     = var.compartment_id
  drg_id             = var.drg_id
  network_id         = var.network_id
  display_name       = var.display_name
  drg_route_table_id = var.drg_route_table_id
  defined_tags       = var.defined_tags
  freeform_tags      = var.freeform_tags

  dynamic "network_details" {
    for_each = var.network_details[*]
    content {
      id                  = var.network_details.id
      ipsec_connection_id = var.network_details.ipsec_connection_id
      route_table_id      = var.network_details.route_table_id
      type                = var.network_details.type
    }
  }
}
