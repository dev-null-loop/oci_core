resource "oci_core_drg_attachment" "this" {
  display_name  = var.display_name
  drg_id        = var.drg_id
  vcn_id        = var.vcn_id
  freeform_tags = var.freeform_tags
}
