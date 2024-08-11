resource "oci_core_volume_attachment" "this" {
  attachment_type                     = var.attachment_type
  instance_id                         = var.instance_id
  volume_id                           = var.volume_id
  device                              = var.device
  display_name                        = var.display_name
  encryption_in_transit_type          = var.encryption_in_transit_type
  is_agent_auto_iscsi_login_enabled   = var.is_agent_auto_iscsi_login_enabled
  is_pv_encryption_in_transit_enabled = var.is_pv_encryption_in_transit_enabled
  is_read_only                        = var.is_read_only
  is_shareable                        = var.is_shareable
  use_chap                            = var.use_chap
}
