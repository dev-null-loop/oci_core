resource "oci_core_instance_maintenance_event" "this" {
  instance_maintenance_event_id = var.instance_maintenance_event_id
  alternative_resolution_action = var.alternative_resolution_action
  can_delete_local_storage      = var.can_delete_local_storage
  defined_tags                  = var.defined_tags
  display_name                  = var.display_name
  freeform_tags                 = var.freeform_tags
  time_window_start             = var.time_window_start
}
