resource "oci_core_ipv6" "this" {
  vnic_id         = var.vnic_id
  defined_tags    = var.defined_tags
  display_name    = var.display_name
  freeform_tags   = var.freeform_tags
  ip_address      = var.ip_address
  ipv6subnet_cidr = var.ipv6subnet_cidr
  route_table_id  = var.route_table_id
}
