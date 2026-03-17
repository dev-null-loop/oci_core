data "oci_identity_availability_domains" "these" {
  compartment_id = var.compartment_id
}

locals {
  ads = data.oci_identity_availability_domains.these.availability_domains
}

resource "oci_core_boot_volume" "this" {
  compartment_id = var.compartment_id
  source_details {
    type                       = var.source_details.type
    change_block_size_in_bytes = var.source_details.change_block_size_in_bytes
    id                         = var.source_details.id
    second_backup_id           = var.source_details.second_backup_id
  }
  dynamic "autotune_policies" {
    for_each = var.autotune_policies[*]
    content {
      autotune_type   = var.autotune_policies.autotune_type
      max_vpus_per_gb = var.autotune_policies.max_vpus_per_gb
    }
  }
  availability_domain = local.ads[var.availability_domain - 1].name
  backup_policy_id    = var.backup_policy_id
  dynamic "boot_volume_replicas" {
    for_each = var.boot_volume_replicas[*]
    content {
      availability_domain = var.boot_volume_replicas.availability_domain
      display_name        = var.boot_volume_replicas.display_name
      xrr_kms_key_id      = var.boot_volume_replicas.xrr_kms_key_id
    }
  }
  cluster_placement_group_id    = var.cluster_placement_group_id
  defined_tags                  = var.defined_tags
  display_name                  = var.display_name
  freeform_tags                 = var.freeform_tags
  is_auto_tune_enabled          = var.is_auto_tune_enabled
  kms_key_id                    = var.kms_key_id
  size_in_gbs                   = var.size_in_gbs
  vpus_per_gb                   = var.vpus_per_gb
  xrc_kms_key_id                = var.xrc_kms_key_id
  boot_volume_replicas_deletion = var.boot_volume_replicas_deletion
}
