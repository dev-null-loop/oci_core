data "oci_core_vcn_dns_resolver_association" "this" {
  vcn_id = oci_core_vcn.this.id
}

resource "oci_core_vcn" "this" {
  compartment_id = var.compartment_id
  dynamic "byoipv6cidr_details" {
    for_each = var.byoipv6cidr_details[*]
    iterator = bd
    content {
      byoipv6range_id = bd.value.byoipv6range_id
      ipv6cidr_block  = bd.value.ipv6cidr_block
    }
  }
  cidr_blocks             = var.cidr_blocks
  defined_tags            = var.defined_tags
  display_name            = var.display_name
  dns_label               = var.dns_label
  freeform_tags           = var.freeform_tags
  ipv6private_cidr_blocks = var.ipv6private_cidr_blocks
  is_ipv6enabled          = var.is_ipv6enabled
}
