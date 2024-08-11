resource "oci_core_boot_volume_backup" "this" {
  boot_volume_id = var.boot_volume_id
  defined_tags   = var.defined_tags
  display_name   = var.display_name
  freeform_tags  = var.freeform_tags
  kms_key_id     = var.kms_key_id
  type           = var.type

  dynamic "source_details" {
    for_each = var.source_details[*]
    content {
      kms_key_id            = var.source_details.kms_key_id
      region                = var.source_details.region
      boot_volume_backup_id = var.source_details.boot_volume_backup_id
    }
  }
}
