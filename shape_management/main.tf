resource "oci_core_shape_management" "this" {
  compartment_id = var.compartment_id
  image_id       = var.image_id
  shape_name     = var.shape_name
}
