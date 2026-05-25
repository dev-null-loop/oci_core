resource "oci_core_volume" "this" {
  availability_domain = var.availability_domain
  compartment_id      = var.compartment_id
  dynamic "autotune_policies" {
    for_each = var.autotune_policies
    iterator = ap
    content {
      autotune_type   = ap.value.autotune_type
      max_vpus_per_gb = ap.value.max_vpus_per_gb
    }
  }
  dynamic "block_volume_replicas" {
    for_each = var.block_volume_replicas
    iterator = bvr
    content {
      availability_domain = bvr.value.availability_domain
      display_name        = bvr.value.display_name
      xrr_kms_key_id      = bvr.value.xrr_kms_key_id
    }
  }
  cluster_placement_group_id     = var.cluster_placement_group_id
  block_volume_replicas_deletion = var.block_volume_replicas_deletion
  defined_tags                   = var.defined_tags
  display_name                   = var.display_name
  freeform_tags                  = var.freeform_tags
  is_reservations_enabled        = var.is_reservations_enabled
  kms_key_id                     = var.kms_key_id
  size_in_gbs                    = var.size_in_gbs
  dynamic "source_details" {
    for_each = var.source_details[*]
    iterator = sd
    content {
      type                       = sd.value.type
      change_block_size_in_bytes = sd.value.change_block_size_in_bytes
      first_backup_id            = sd.value.first_backup_id
      id                         = sd.value.id
      second_backup_id           = sd.value.second_backup_id
    }
  }
  vpus_per_gb    = var.vpus_per_gb
  xrc_kms_key_id = var.xrc_kms_key_id
}
