resource "oci_core_volume_group_backup" "this" {
  volume_group_id = var.volume_group_id
  compartment_id  = var.compartment_id
  defined_tags    = var.defined_tags
  display_name    = var.display_name
  freeform_tags   = var.freeform_tags
  type            = var.type
  dynamic "source_details" {
    for_each = var.source_details[*]
    iterator = sd
    content {
      kms_key_id             = sd.value.kms_key_id
      region                 = sd.value.region
      volume_group_backup_id = sd.value.volume_group_backup_id
    }
  }
}
