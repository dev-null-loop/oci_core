resource "oci_core_boot_volume" "this" {
  availability_domain = var.availability_domain
  compartment_id      = var.compartment_id
  source_details {
    type                       = var.source_details.type
    change_block_size_in_bytes = var.source_details.change_block_size_in_bytes
    first_backup_id            = var.source_details.first_backup_id
    id                         = var.source_details.id
    second_backup_id           = var.source_details.second_backup_id
  }
  dynamic "autotune_policies" {
    for_each = var.autotune_policies
    iterator = ap
    content {
      autotune_type   = ap.value.autotune_type
      max_vpus_per_gb = ap.value.max_vpus_per_gb
    }
  }
  backup_policy_id = var.backup_policy_id
  dynamic "boot_volume_replicas" {
    for_each = var.boot_volume_replicas
    iterator = bvr
    content {
      availability_domain = bvr.value.availability_domain
      display_name        = bvr.value.display_name
      xrr_kms_key_id      = bvr.value.xrr_kms_key_id
    }
  }
  cluster_placement_group_id    = var.cluster_placement_group_id
  boot_volume_replicas_deletion = var.boot_volume_replicas_deletion
  defined_tags                  = var.defined_tags
  display_name                  = var.display_name
  freeform_tags                 = var.freeform_tags
  is_auto_tune_enabled          = var.is_auto_tune_enabled
  kms_key_id                    = var.kms_key_id
  size_in_gbs                   = var.size_in_gbs
  vpus_per_gb                   = var.vpus_per_gb
  xrc_kms_key_id                = var.xrc_kms_key_id
}
