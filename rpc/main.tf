resource "oci_core_remote_peering_connection" "this" {
  compartment_id   = var.compartment_id
  drg_id           = var.drg_id
  defined_tags     = var.defined_tags
  display_name     = var.display_name
  freeform_tags    = var.freeform_tags
  peer_id          = var.peer_id
  peer_region_name = var.peer_region_name
}
