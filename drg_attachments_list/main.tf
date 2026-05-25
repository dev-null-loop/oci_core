resource "oci_core_drg_attachments_list" "this" {
  drg_id           = var.drg_id
  attachment_type  = var.attachment_type
  is_cross_tenancy = var.is_cross_tenancy
}
