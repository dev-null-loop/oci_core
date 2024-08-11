data "oci_identity_availability_domains" "this" {
  compartment_id = var.compartment_id
}

resource "oci_core_volume" "this" {
  compartment_id                 = var.compartment_id
  defined_tags                   = var.defined_tags
  display_name                   = var.display_name
  freeform_tags                  = var.freeform_tags
  kms_key_id                     = var.kms_key_id
  size_in_gbs                    = var.size_in_gbs
  availability_domain            = data.oci_identity_availability_domains.this.availability_domains[var.availability_domain - 1].name
  vpus_per_gb                    = var.vpus_per_gb
  block_volume_replicas_deletion = true

  dynamic "autotune_policies" {
    for_each = var.autotune_policies[*]
    content {
      autotune_type   = var.autotune_policies.type
      max_vpus_per_gb = var.autotune_policies.max_vpus_per_gb
    }
  }

  dynamic "block_volume_replicas" {
    for_each = var.block_volume_replicas[*]
    content {
      availability_domain = var.block_volume_replicas.availability_domain
      display_name        = var.block_volume_replicas.display_name
    }
  }

  dynamic "source_details" {
    for_each = var.source_details[*]
    content {
      id   = var.source_details.id
      type = var.source_details.type
    }
  }
}
