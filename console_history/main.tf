resource "oci_core_console_history" "this" {
  instance_id   = var.instance_id
  defined_tags  = var.defined_tags
  display_name  = var.display_name
  freeform_tags = var.freeform_tags
}
