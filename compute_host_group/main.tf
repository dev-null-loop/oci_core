resource "oci_core_compute_host_group" "this" {
  availability_domain = var.availability_domain
  compartment_id      = var.compartment_id
  dynamic "configurations" {
    for_each = var.configurations
    iterator = cfg
    content {
      firmware_bundle_id = cfg.value.firmware_bundle_id
      recycle_level      = cfg.value.recycle_level
      state              = cfg.value.state
      target             = cfg.value.target
    }
  }
  defined_tags                   = var.defined_tags
  display_name                   = var.display_name
  freeform_tags                  = var.freeform_tags
  is_targeted_placement_required = var.is_targeted_placement_required
}
