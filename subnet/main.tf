resource "oci_core_subnet" "this" {
  cidr_block                 = var.cidr_block
  compartment_id             = var.compartment_id
  vcn_id                     = var.vcn_id
  display_name               = var.display_name
  dns_label                  = var.dns_label
  freeform_tags              = var.freeform_tags
  prohibit_public_ip_on_vnic = var.is_subnet_private
  route_table_id             = var.route_table_id
  security_list_ids          = var.security_list_ids
}
