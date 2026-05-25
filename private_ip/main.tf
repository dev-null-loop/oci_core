resource "oci_core_private_ip" "this" {
  cidr_prefix_length          = var.cidr_prefix_length
  defined_tags                = var.defined_tags
  display_name                = var.display_name
  freeform_tags               = var.freeform_tags
  hostname_label              = var.hostname_label
  ip_address                  = var.ip_address
  ipv4subnet_cidr_at_creation = var.ipv4subnet_cidr_at_creation
  lifetime                    = var.lifetime
  route_table_id              = var.route_table_id
  subnet_id                   = var.subnet_id
  vlan_id                     = var.vlan_id
  vnic_id                     = var.vnic_id
}
