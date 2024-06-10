resource "oci_core_drg_route_table" "this" {
  drg_id                           = var.drg_id
  defined_tags                     = var.defined_tags
  display_name                     = var.display_name
  freeform_tags                    = var.freeform_tags
  import_drg_route_distribution_id = var.import_drg_route_distribution_id
  is_ecmp_enabled                  = var.is_ecmp_enabled
}
