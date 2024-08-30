data "oci_identity_availability_domains" "this" {
  compartment_id = var.compartment_id
}

locals {
  ads = data.oci_identity_availability_domains.this.availability_domains
}

resource "oci_core_boot_volume" "this" {
  compartment_id      = var.compartment_id
  availability_domain = local.ads[var.availability_domain - 1].name
  defined_tags        = var.defined_tags
  display_name        = var.display_name
  freeform_tags       = var.freeform_tags
  kms_key_id          = var.kms_key_id
  size_in_gbs         = var.size_in_gbs
  vpus_per_gb         = var.vpus_per_gb

  source_details {
    id   = var.source_details.id
    type = var.source_details.type
  }

  autotune_policies {
    autotune_type   = var.autotune_policies_autotune_type
    max_vpus_per_gb = var.autotune_policies_max_vpus_per_gb
  }

  boot_volume_replicas {
    availability_domain = var.boot_volume_replicas.availability_domain
    display_name        = var.boot_volume_replicas.display_name
  }
}
