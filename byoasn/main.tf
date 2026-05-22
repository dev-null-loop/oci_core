resource "oci_core_byoasn" "this" {
  asn            = var.asn
  compartment_id = var.compartment_id
  display_name   = var.display_name
  defined_tags   = var.defined_tags
  freeform_tags  = var.freeform_tags
}
