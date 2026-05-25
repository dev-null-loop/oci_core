resource "oci_core_volume_backup" "this" {
  volume_id      = var.volume_id
  compartment_id = var.compartment_id
  defined_tags   = var.defined_tags
  display_name   = var.display_name
  freeform_tags  = var.freeform_tags
  kms_key_id     = var.kms_key_id
  type           = var.type
  dynamic "source_details" {
    for_each = var.source_details[*]
    iterator = sd
    content {
      region           = sd.value.region
      volume_backup_id = sd.value.volume_backup_id
      kms_key_id       = sd.value.kms_key_id
    }
  }
}
