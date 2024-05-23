resource "oci_core_cpe" "this" {
  compartment_id      = var.compartment_id
  ip_address          = var.ip_address
  cpe_device_shape_id = var.cpe_device_shape_id
  defined_tags        = var.defined_tags
  display_name        = var.display_name
  freeform_tags       = var.freeform_tags
  is_private          = var.is_private
}
