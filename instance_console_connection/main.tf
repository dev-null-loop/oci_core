resource "oci_core_instance_console_connection" "this" {
  instance_id   = var.instance_id
  public_key    = var.public_key
  defined_tags  = var.defined_tags
  freeform_tags = var.freeform_tags
}
