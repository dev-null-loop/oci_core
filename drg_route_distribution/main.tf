resource "oci_core_drg_route_distribution" "this" {
  distribution_type = var.distribution_type
  drg_id            = var.drg_id
  defined_tags      = var.defined_tags
  display_name      = var.display_name
  freeform_tags     = var.freeform_tags
}
