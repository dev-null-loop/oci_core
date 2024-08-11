resource "oci_core_private_ip" "this" {
  display_name   = var.display_name
  freeform_tags  = var.freeform_tags
  hostname_label = var.hostname_label
  ip_address     = var.ip_address
  vlan_id        = var.vlan_id
  vnic_id        = var.vnic_id
}
