resource "oci_core_volume_backup" "this" {
  volume_id     = var.volume_id
  defined_tags  = var.defined_tags
  display_name  = var.display_name
  freeform_tags = var.freeform_tags
  kms_key_id    = var.kms_key_id
  type          = var.type

  dynamic "source_details" {
    for_each = var.source_details[*]
    content {
      kms_key_id       = var.source_details.kms_key_id
      region           = var.source_details.region
      volume_backup_id = var.source_details.volume_backup_id
    }
  }
}
