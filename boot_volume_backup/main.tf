resource "oci_core_boot_volume_backup" "this" {
  boot_volume_id = var.boot_volume_id
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
      kms_key_id            = sd.value.kms_key_id
      region                = sd.value.region
      boot_volume_backup_id = sd.value.boot_volume_backup_id
    }
  }
}
