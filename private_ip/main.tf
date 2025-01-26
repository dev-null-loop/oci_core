resource "oci_core_private_ip" "this" {
  defined_tags   = var.defined_tags
  display_name   = var.display_name
  freeform_tags  = var.freeform_tags
  hostname_label = var.hostname_label
  ip_address     = var.ip_address
  route_table_id = var.route_table_id
  vlan_id        = var.vlan_id
  vnic_id        = var.vnic_id
}
